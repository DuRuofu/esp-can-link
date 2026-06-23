"""Serial Port Application - 串口调试工具主程序"""
import sys
import os
from PySide6.QtWidgets import QApplication
from PySide6.QtGui import QIcon

from core.serial_manager import SerialManager
from core.log_manager import LogManager
from ui.main_window import MainWindow


def main():
    app = QApplication(sys.argv)
    app.setApplicationName("SerialPort")

    # 设置应用图标
    logo_path = os.path.join(os.path.dirname(__file__), "logo.png")
    if os.path.exists(logo_path):
        app.setWindowIcon(QIcon(logo_path))

    # 初始化核心模块
    serial_manager = SerialManager()
    log_manager = LogManager()

    # 创建主窗口
    window = MainWindow(serial_manager, log_manager)
    window.show()

    # 设置数据收发tab的发送按钮
    from ui.tabs.data_exchange_tab import DataExchangeTab
    data_tab = window.findChild(DataExchangeTab)
    if data_tab:
        data_tab.btn_send.clicked.connect(lambda: _on_send(window, data_tab))
        data_tab.btn_clear_send.clicked.connect(data_tab.clear_send)
        data_tab.btn_clear_recv.clicked.connect(data_tab.clear_recv)

    sys.exit(app.exec())


def _on_send(window, data_tab):
    text = data_tab.get_send_text()
    if text:
        if window.send_data(text):
            data_tab.clear_send()


if __name__ == "__main__":
    main()