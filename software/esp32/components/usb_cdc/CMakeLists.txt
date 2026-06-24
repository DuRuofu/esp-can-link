# Component: usb_cdc - USB CDC ACM wrapper for open-can-link
idf_component_register(
    SRCS "usb_cdc.c"
    REQUIRES espressif__esp_tinyusb
    INCLUDE_DIRS "include"
    PRIV_INCLUDE_DIRS "."
)
