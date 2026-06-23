# esp-can-link 通信协议

USB CDC 和 Wi-Fi 共用同一套 JSON 命令协议。

---

## 协议概述

- 格式：JSON，每条命令/响应为一行（换行符分隔）
- 编码：UTF-8
- 方向：
  - Host → Device：发送命令（`cmd`）
  - Device → Host：推送数据（`type`）+ 命令响应

---

## Host → Device 命令

### 发送 CAN 报文

```json
{
  "cmd": "send",
  "id": 291,
  "ext": false,
  "data": [1, 2, 3, 4]
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| cmd | string | 固定为 `"send"` |
| id | int | CAN ID（标准帧 0~2047，扩展帧 0~536870911） |
| ext | bool | `false` 为标准帧（11位），`true` 为扩展帧（29位） |
| data | int[0..8] | 数据字节（0~8 字节，每个 0~255） |

### 周期发送 CAN 报文

```json
{
  "cmd": "periodic_start",
  "id": 512,
  "ext": false,
  "data": [1, 0, 0, 0, 0, 0, 0, 0],
  "period_ms": 20
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| cmd | string | `"periodic_start"` 或 `"periodic_stop"` |
| id | int | CAN ID |
| ext | bool | 是否扩展帧 |
| data | int[0..8] | 数据字节 |
| period_ms | int | 周期（毫秒），仅 `periodic_start` 需要 |

### 停止周期发送

```json
{
  "cmd": "periodic_stop",
  "id": 512
}
```

### 设置 CAN 波特率

```json
{
  "cmd": "set_bitrate",
  "bitrate": 500000
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| bitrate | int | 支持：125000, 250000, 500000, 1000000 |

### 设置 CAN ID 过滤

```json
{
  "cmd": "set_filter",
  "filter": [
    {"id": 0x100, "mask": 0x7F0}
  ]
}
```

### 打开 / 关闭 CAN 接口

```json
{"cmd": "can_start"}
{"cmd": "can_stop"}
```

---

## Device → Host 推送

### 接收 CAN 报文

```json
{
  "type": "rx",
  "id": 291,
  "ext": false,
  "dlc": 4,
  "data": [1, 2, 3, 4],
  "timestamp_ms": 123456
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| type | string | 固定为 `"rx"` |
| id | int | CAN ID |
| ext | bool | 是否扩展帧 |
| dlc | int | 数据长度码（0~8） |
| data | int[] | 数据字节 |
| timestamp_ms | int | 毫秒时间戳（设备上电后） |

### 总线状态

```json
{
  "type": "status",
  "state": "running",
  "tx_errors": 0,
  "rx_errors": 0,
  "bus_off": false
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| state | string | `"stopped"` / `"running"` / `"bus_off"` |
| tx_errors | int | 发送错误计数 |
| rx_errors | int | 接收错误计数 |
| bus_off | bool | 是否进入总线关闭状态 |

---

## 命令响应

所有命令都会返回响应：

```json
{
  "type": "response",
  "cmd": "send",
  "status": "ok",
  "message": ""
}
```

```json
{
  "type": "response",
  "cmd": "send",
  "status": "error",
  "message": "CAN bus not started"
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| type | string | 固定为 `"response"` |
| cmd | string | 原始命令名 |
| status | string | `"ok"` 或 `"error"` |
| message | string | 错误时包含描述信息 |

---

## 完整命令列表

| 命令 | 说明 |
|------|------|
| `can_start` | 启动 CAN 接口 |
| `can_stop` | 停止 CAN 接口 |
| `set_bitrate` | 设置波特率 |
| `set_filter` | 设置 ID 过滤 |
| `send` | 发送单帧 CAN 报文 |
| `periodic_start` | 开始周期发送 |
| `periodic_stop` | 停止周期发送 |
| `get_status` | 查询总线状态 |
| `get_info` | 查询设备信息 |

---

## 设备信息响应

```json
{
  "type": "info",
  "firmware": "esp-can-link",
  "version": "0.1.0",
  "hw": "ESP32-S3 + TJA1051T/3,118"
}
```
