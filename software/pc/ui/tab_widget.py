"""Tab Widget - 右侧标签页容器"""
from PySide6.QtWidgets import QTabWidget


class TabWidget(QTabWidget):
    """标签页容器"""

    def __init__(self):
        super().__init__()
        self.setTabPosition(QTabWidget.TabPosition.North)

    def add_tab(self, widget, title):
        """添加标签页"""
        self.addTab(widget, title)