"""Log Panel - 日志面板"""
from PySide6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout,
    QGroupBox, QTextBrowser, QPushButton
)
from PySide6.QtGui import QFont


class LogPanel(QWidget):
    """日志面板 - 显示通信日志"""

    def __init__(self):
        super().__init__()
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)

        group = QGroupBox("通信日志")
        vbox = QVBoxLayout(group)

        # 日志显示区域
        self.log_browser = QTextBrowser()
        self.log_browser.setFont(QFont("Consolas", 11))
        vbox.addWidget(self.log_browser)

        # 控制按钮
        btn_layout = QHBoxLayout()
        self.btn_clear = QPushButton("清空日志")
        self.btn_save = QPushButton("保存日志")
        btn_layout.addWidget(self.btn_clear)
        btn_layout.addWidget(self.btn_save)
        btn_layout.addStretch()
        vbox.addLayout(btn_layout)

        layout.addWidget(group)

    def get_log_browser(self):
        return self.log_browser

    def clear(self):
        self.log_browser.clear()