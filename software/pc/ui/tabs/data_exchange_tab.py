"""Data Exchange Tab - 数据收发标签页"""
from PySide6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QGridLayout,
    QGroupBox, QLabel, QPushButton, QTextBrowser, QTextEdit
)
from PySide6.QtCore import Qt


class DataExchangeTab(QWidget):
    """数据收发标签页 - 发送和接收数据"""

    def __init__(self):
        super().__init__()
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)

        # 接收区域（上方，占据剩余空间）
        recv_group = QGroupBox("接收数据")
        recv_layout = QVBoxLayout(recv_group)

        self.recv_browser = QTextBrowser()
        recv_layout.addWidget(self.recv_browser)

        btn_layout2 = QHBoxLayout()
        self.btn_clear_recv = QPushButton("清空接收")
        btn_layout2.addWidget(self.btn_clear_recv)
        btn_layout2.addStretch()
        recv_layout.addLayout(btn_layout2)

        layout.addWidget(recv_group, stretch=1)

        # 发送区域（下方，高度固定）
        send_group = QGroupBox("发送数据")
        send_layout = QVBoxLayout(send_group)

        self.send_text = QTextEdit()
        self.send_text.setMaximumHeight(60)
        self.send_text.setPlaceholderText("输入要发送的数据...")
        send_layout.addWidget(self.send_text)

        btn_layout = QHBoxLayout()
        self.btn_send = QPushButton("发送")
        self.btn_clear_send = QPushButton("清空")
        btn_layout.addWidget(self.btn_send)
        btn_layout.addWidget(self.btn_clear_send)
        btn_layout.addStretch()
        send_layout.addLayout(btn_layout)

        layout.addWidget(send_group, stretch=0)

    def on_data_received(self, data):
        """接收数据回调"""
        self.recv_browser.append(data.strip())

    def get_send_text(self):
        return self.send_text.toPlainText()

    def clear_recv(self):
        self.recv_browser.clear()

    def clear_send(self):
        self.send_text.clear()

    def append_send(self, text):
        self.send_text.append(text)