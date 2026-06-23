# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

串口上位机模板项目，基于 PySide6 构建，用于快速开发测试用上位机软件。

定位：给人开发项目/板子时，提供一个测试用上位机模板，基于此模板可以快速扩展不同功能。

## Architecture

```
SerialPort/
├── main.py                 # 程序入口，组装各模块
├── core/
│   ├── serial_manager.py  # 串口管理（线程安全）
│   └── log_manager.py     # 日志管理
├── ui/
│   ├── main_window.py     # 主窗口，QSplitter 左右布局
│   ├── serial_panel.py    # 左侧：串口配置面板
│   ├── log_panel.py       # 左侧：日志面板
│   ├── tab_widget.py      # 右侧标签页容器
│   └── tabs/
│       ├── data_exchange_tab.py   # 数据收发（默认tab）
│       └── placeholder_tab.py     # 预留标签页（可扩展）
└── utils/
    └── helpers.py          # 工具函数
```

## Key Classes

**SerialManager (QObject)**: 串口通信管理器
- `connect(port, baudrate, log_manager)` - 连接串口
- `disconnect()` - 断开连接
- `send(data)` - 发送数据
- 信号: `connected`, `disconnected`, `data_received`, `error_occurred`

**LogManager**: 日志管理器
- `info()`, `send()`, `recv()`, `error()`, `warning()` - 不同级别日志
- `set_text_browser()` - 绑定显示组件
- `clear()`, `save_to_file()` - 日志操作

**MainWindow (QWidget)**: 主窗口
- 左侧: SerialPanel + LogPanel（垂直排列）
- 右侧: QTabWidget（可扩展多个标签页）

## Adding New Tab

1. 在 `ui/tabs/` 下创建新的 tab 类，继承 `QWidget`
2. 实现 `on_data_received(data)` 方法处理串口数据
3. 在 `main_window.py` 的 `_setup_ui()` 中添加:
   ```python
   self.tab_widget.add_tab(NewTab(), "功能名称")
   ```

## Dependencies

- pyside6>=6.9.1
- pyserial>=3.5

## Logo

应用图标为根目录下的 `logo.png`，在 main.py 入口处通过 `app.setWindowIcon()` 设置。

## Running

```bash
uv sync
uv run python main.py
```