# esp-can-link

基于 **ESP32-S3 + TJA1051T/3,118** 的 USB / Wi-Fi 双通道 CAN 2.0 调试工具。

---

## 项目定位

做一个开放、可编程、低成本的 CAN 调试接口，替代封闭的厂商 USB-CAN 模块。

可通过以下方式控制 CAN 总线：

- USB CDC 虚拟串口
- Wi-Fi Web 页面 / WebSocket / TCP
- PC 上位机（PySide6 桌面应用）
- Python 脚本

面向日常产品开发、设备调试、现场测试场景，不替代专业汽车 CAN 分析仪。

---

## 项目结构

```
esp-can-link/
├── docs/              # 项目文档
├── hanrdware/         # 硬件设计（原理图、PCB）
├── software/
│   ├── esp32/         # ESP32-S3 固件（ESP-IDF 6.0）
│   ├── pc/            # PC 上位机（PySide6）
│   └── ref/           # 参考代码
├── web/               # 网页调试界面
├── README.md
└── CLAUDE.md
```

---

## 硬件

| 模块 | 型号 |
|------|------|
| 主控 | ESP32-S3 |
| CAN 收发器 | TJA1051T/3,118（NXP，SOIC-8） |
| USB | USB OTG（DP: GPIO20, DM: GPIO19） |
| 无线 | Wi-Fi 2.4 GHz（AP / STA） |

### 引脚连接

```
ESP32-S3 CAN_TX (GPIO4)  →  TJA1051T/3,118 TXD
ESP32-S3 CAN_RX (GPIO5)  ←  TJA1051T/3,118 RXD
TJA1051T/3,118 CANH/CANL →  CAN 总线
```

> GPIO 不能直连 CANH/CANL，必须通过 CAN 收发器。CAN 总线需要 120Ω 终端电阻。

---

## CAN 支持

Classical CAN 2.0A / 2.0B，11 位标准帧 + 29 位扩展帧，0~8 字节数据。

波特率：125k / 250k / 500k / 1M bps。

不支持 CAN FD / CAN XL。

---

## 工作模式

- **USB-CAN 有线模式**：USB 连接 PC，适合自动化测试和脚本控制
- **Wi-Fi 无线模式**：设备自建热点（默认 `ESP_CAN_LINK_xxxx`，`192.168.4.1`），网页调试
- **网关模式**：设备接入现有网络，提供 TCP / WebSocket 接口

---

## 通信协议

USB CDC 和 Wi-Fi 共用同一套 JSON 命令协议，详见 [docs/protocol.md](docs/protocol.md)。

---

## 固件开发

ESP-IDF 6.0，目标芯片 ESP32-S3。

```bash
cd software/esp32
idf.py set-target esp32s3
idf.py build
idf.py -p <PORT> flash monitor
```

---

## PC 上位机

PySide6 + pyserial，线程安全串口通信，多标签页可扩展架构。

```bash
cd software/pc
uv sync
uv run python main.py
```

---

## License

MIT License
