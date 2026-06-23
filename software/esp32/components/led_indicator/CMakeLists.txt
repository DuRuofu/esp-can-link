idf_component_register(
    SRCS "led_indicator.c"
    REQUIRES esp_driver_rmt
    INCLUDE_DIRS "include"
    PRIV_INCLUDE_DIRS "."
)
