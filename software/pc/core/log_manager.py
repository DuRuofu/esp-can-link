"""Log Manager - 统一日志格式管理，支持彩色输出"""
from datetime import datetime
from html import escape


class LogManager:
    """日志管理器，提供统一的日志格式和彩色输出"""

    COLOR_MAP = {
        "INFO": "#808080",    # 灰色
        "SEND": "#1E90FF",    # 道奇蓝
        "RECV": "green",      # 绿色
        "ERROR": "red",       # 红色
        "WARNING": "orange",  # 橙色
    }

    def __init__(self, text_browser=None):
        self._text_browser = text_browser

    def set_text_browser(self, text_browser):
        """设置日志显示组件"""
        self._text_browser = text_browser

    def log(self, message, msg_type="INFO"):
        """添加日志"""
        if self._text_browser is None:
            return

        timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]
        color = self.COLOR_MAP.get(msg_type, "black")
        formatted_msg = f'<span style="color: {color}">[{timestamp}] [{msg_type}] {escape(message)}</span>'

        self._text_browser.append(formatted_msg)

        # Trim old lines to prevent memory bloat (batch remove)
        doc = self._text_browser.document()
        max_blocks = 5000
        while doc.blockCount() > max_blocks:
            cursor = self._text_browser.textCursor()
            cursor.movePosition(cursor.MoveOperation.Start)
            cursor.select(cursor.SelectionType.BlockUnderCursor)
            cursor.removeSelectedText()
            cursor.deleteChar()

        # 自动滚动到底部
        cursor = self._text_browser.textCursor()
        cursor.movePosition(cursor.MoveOperation.End)
        self._text_browser.setTextCursor(cursor)

    def info(self, message):
        self.log(message, "INFO")

    def send(self, message):
        self.log(message, "SEND")

    def recv(self, message):
        self.log(message, "RECV")

    def error(self, message):
        self.log(message, "ERROR")

    def warning(self, message):
        self.log(message, "WARNING")

    def clear(self):
        """清空日志"""
        if self._text_browser:
            self._text_browser.clear()

    def save_to_file(self, filepath):
        """保存日志到文件"""
        if self._text_browser is None:
            return False
        try:
            with open(filepath, "w", encoding="utf-8") as f:
                f.write(self._text_browser.toPlainText())
            return True
        except Exception:
            return False