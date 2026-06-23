"""Placeholder Tab - 预留标签页"""
from PySide6.QtWidgets import (
    QWidget, QVBoxLayout, QLabel
)
from PySide6.QtCore import Qt


class PlaceholderTab(QWidget):
    """预留标签页 - 供未来扩展使用"""

    def __init__(self, title="预留功能"):
        super().__init__()
        layout = QVBoxLayout(self)
        label = QLabel(f"{title}\n\n功能开发中...")
        label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        label.setStyleSheet("color: gray; font-size: 14px;")
        layout.addWidget(label)

    def on_data_received(self, data):
        """预留接口 - 可在子类中重写处理接收到的数据"""
        pass