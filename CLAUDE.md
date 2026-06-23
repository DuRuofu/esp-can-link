# CLAUDE.md

## 项目概述

**esp-can-link** — 基于 ESP32-S3 + TJA1051 的 USB / Wi-Fi 双通道 CAN 2.0 调试工具。

目标：做一个开放、可编程、低成本的 CAN 调试接口，替代封闭的厂商 USB-CAN 模块。

## 开发环境

- **框架**: ESP-IDF 6.0
- **目标芯片**: ESP32-S3
- **编译器**: xtensa-esp32s3-elf-gcc（ESP-IDF 自带）
- **构建系统**: CMake（ESP-IDF 标准）

### 常用命令

```bash
idf.py set-target esp32s3          # 设定目标芯片
idf.py menuconfig                  # 配置项目
idf.py build                       # 编译
idf.py -p <PORT> flash monitor     # 烧录 + 串口监控
idf.py -p <PORT> flash             # 仅烧录
idf.py fullclean                   # 完全清理
```

## 技术栈和关键依赖

### USB 通信 (Device 模式)
- **协议栈**: TinyUSB（ESP-IDF 内置组件 `espressif/esp_tinyusb`）
- **类**: CDC ACM（虚拟串口）
- **API 风格**: 高层封装，回调 + FreeRTOS Queue
- **参考代码**: `software/ref/usb/device/tusb_serial_device/`
- **注意**: **不要使用 CherryUSB**（`software/ref/usb/device/cherryusb_serial_device/`），它是第三方底层库，API 复杂，项目不需要

### CAN 通信
- **外设**: ESP32-S3 内置 TWAI（Two-Wire Automotive Interface）控制器
- **收发器**: TJA1051
- **协议**: Classical CAN 2.0A / 2.0B（不支持 CAN FD）
- **参考代码**: `software/ref/twai/twai_utils/`（控制台交互式 TWAI 工具）

### Wi-Fi
- ESP32-S3 内置 Wi-Fi
- AP 模式（默认）或 STA 模式
- WebSocket 推送 CAN 报文到网页前端

### 通信协议
- 内部统一使用 JSON 格式的命令-响应协议
- USB CDC 和 Wi-Fi 共用同一套协议解析逻辑

## 硬件引脚定义

### USB-OTG（固定，不可更改）
| 信号 | GPIO |
|------|------|
| USB_DP | GPIO20 |
| USB_DM | GPIO19 |

### CAN / TWAI（默认，可在固件中修改）
| 信号 | GPIO | 连接 |
|------|------|------|
| CAN_TX | GPIO4 | → TJA1051 TXD |
| CAN_RX | GPIO5 | ← TJA1051 RXD |

## 项目结构

```
esp-can-link/
├── CLAUDE.md                     # 本文件
├── README.md                     # 项目说明
├── firmware/                     # ESP-IDF 固件工程
│   ├── main/
│   │   ├── CMakeLists.txt
│   │   ├── app_main.c            # 入口
│   │   ├── can_driver.c/h        # TWAI 驱动封装
│   │   ├── usb_cdc.c/h           # USB CDC 通信
│   │   ├── wifi_server.c/h       # Wi-Fi + WebSocket
│   │   └── protocol.c/h          # JSON 命令协议解析
│   ├── CMakeLists.txt
│   └── sdkconfig.defaults
├── hardware/                     # 硬件设计
│   ├── schematic/
│   ├── pcb/
│   └── docs/
├── web/                          # 网页调试界面
│   ├── index.html
│   ├── app.js
│   └── style.css
├── tools/                        # PC 端工具
│   ├── python/
│   └── test/
├── docs/                         # 文档
│   ├── protocol.md
│   ├── hardware.md
│   └── roadmap.md
└── software/ref/                 # 参考代码（不参与编译）
    ├── usb/
    │   ├── device/tusb_serial_device/  ← USB CDC 参考
    │   └── device/cherryusb_serial_device/  ← 忽略
    └── twai/
        ├── twai_utils/           ← TWAI 命令交互参考
        ├── twai_network/         ← CAN 收发参考
        └── twai_error_recovery/  ← 错误恢复参考
```

## 软件架构

```
USB CDC RX ───┐
              ├── 命令解析器 (protocol.c) ── CAN 发送队列 ── TWAI 驱动 ── CAN 总线
Wi-Fi RX ─────┘

CAN 总线 ── TWAI 驱动 ── CAN 接收队列 ── 事件分发器 ──┬── USB CDC TX
                                                      └── Wi-Fi WebSocket TX
```

## 参考代码说明

### 需要参考的
| 目录 | 用途 | 关键文件 |
|------|------|----------|
| `software/ref/usb/device/tusb_serial_device/` | USB CDC 虚拟串口 | `tusb_serial_device_main.c` |
| `software/ref/twai/twai_utils/` | TWAI 驱动用法 + 命令解析 | `twai_utils_main.c`, `cmd_twai*.c` |
| `software/ref/twai/twai_network/twai_sender/` | CAN 发送示例 | `twai_sender.c` |
| `software/ref/twai/twai_network/twai_listen_only/` | CAN 接收示例 | `twai_listen_only.c` |

### 不需要参考的（忽略）
- `software/ref/usb/device/cherryusb_*` — CherryUSB，不适合本项目
- `software/ref/usb/device/tusb_hid/msc/midi/ncm/` — 非 CDC 类，不相关
- `software/ref/usb/host/*` — 全部是 USB Host 模式，本项目是 Device 模式

## 开发注意事项

1. **ESP-IDF 版本必须是 6.0**，API 和配置项可能与其他版本不同
2. **不要直接用 GPIO 连接 CANH/CANL**，必须通过 TJA1051 收发器
3. **USB_DP/GPIO20 和 USB_DM/GPIO19 是 ESP32-S3 USB-OTG 的专用引脚**，不可用作普通 GPIO
4. **USB CDC 和 Wi-Fi 共用同一套 JSON 命令协议**，避免维护两套逻辑
5. CAN 总线需要正确的 120Ω 终端电阻，硬件上建议用拨码开关控制
6. `sdkconfig.defaults` 中需要开启 `CONFIG_TINYUSB_CDC_ENABLED=y`
7. 使用 FreeRTOS 任务间通信：ISR 回调用 Queue/TaskNotify 传递数据到应用层任务
8. 上电后默认进入安全/监听状态，避免误发 CAN 报文
9. 周期发送 CAN 报文时必须加入超时保护
10. 默认 VID/PID 可以使用 ESP32-S3 的测试值，正式发布前再申请
