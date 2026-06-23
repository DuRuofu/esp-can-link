# SerialPort - 串口上位机模板

用于快速开发测试用上位机软件的模板项目，基于 PySide6 构建。

## 功能特性

- **串口通信**：自动扫描串口、支持多种波特率、线程安全通信
- **日志系统**：彩色日志输出、实时显示、导出保存
- **可扩展标签页**：预留多个标签页，可根据项目需求扩展功能
- **模块化架构**：UI 与业务分离，便于维护和扩展

## 应用图标

项目根目录下的 `logo.png` 作为应用程序图标。

如需更换图标，请替换 `logo.png` 文件（建议尺寸 256x256 或更大）。

## 界面预览

- **左侧**：串口配置（端口、波特率、连接按钮）+ 通信日志
- **右侧**：多标签页，当前包含"数据收发"和3个预留标签页

## 项目结构

```
SerialPort/
├── main.py                 # 程序入口
├── core/                   # 核心模块
│   ├── serial_manager.py  # 串口管理
│   └── log_manager.py     # 日志管理
├── ui/                    # 用户界面
│   ├── main_window.py     # 主窗口
│   ├── serial_panel.py    # 串口配置面板
│   ├── log_panel.py       # 日志面板
│   ├── tab_widget.py      # 标签页容器
│   └── tabs/              # 功能标签页
│       ├── data_exchange_tab.py
│       └── placeholder_tab.py
├── utils/                  # 工具函数
│   └── helpers.py
├── pyproject.toml         # 项目配置
└── CLAUDE.md              # Claude Code 指南
```

## 环境要求

- Python 3.12+
- PySide6 6.9.1+
- pyserial 3.5+

## 安装运行

```bash
# 安装依赖
uv sync

# 运行程序
uv run python main.py
```

## 扩展指南

### 添加新标签页

1. 在 `ui/tabs/` 下创建新的 tab 类

```python
# ui/tabs/my_tab.py
from PySide6.QtWidgets import QWidget, QVBoxLayout, QLabel

class MyTab(QWidget):
    def __init__(self):
        super().__init__()
        layout = QVBoxLayout(self)
        layout.addWidget(QLabel("我的功能"))
        
    def on_data_received(self, data):
        """处理接收到的数据"""
        pass
```

2. 在 `ui/main_window.py` 中添加

```python
from .tabs.my_tab import MyTab
# 在 _setup_ui 中
self.tab_widget.add_tab(MyTab(), "我的功能")
```

### 串口数据流

1. SerialManager 在独立线程中通过 QTimer 轮询串口数据
2. 收到数据后通过 Signal 传递到主线程
3. MainWindow 收到数据后分发给当前活动的 Tab

## 设计原则

1. **UI 与业务分离**：业务逻辑在 core/，UI 在 ui/
2. **线程安全**：串口操作在 QThread 中，通过 Signal 与主线程通信
3. **信号槽通信**：避免直接调用，通过 Qt 信号槽解耦
4. **预留扩展**：新增功能只需添加新 Tab 类

## 打包发布

使用 PyInstaller 打包为可执行文件。

```bash
# 安装打包依赖（使用 uv）
uv add --dev pyinstaller pillow

# 打包（当前目录）
uv run pyinstaller main.spec
```

打包完成后，可执行文件位于 `dist/SerialPort/` 目录。

`.gitignore` 已配置忽略 `build/`、`dist/`、`.venv/` 等目录。