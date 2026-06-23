"""Helper utilities"""
from datetime import datetime


def format_timestamp():
    """返回当前时间戳字符串"""
    return datetime.now().strftime("%H:%M:%S.%f")[:-3]


def bytes_to_hex(data):
    """将字节数据转换为十六进制字符串"""
    if isinstance(data, bytes):
        return ' '.join(f'{b:02X}' for b in data)
    return data


def hex_to_bytes(hex_str):
    """将十六进制字符串转换为字节"""
    hex_str = hex_str.replace(' ', '').replace('\n', '')
    return bytes.fromhex(hex_str)