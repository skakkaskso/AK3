MEMORY /* Опис областей памʼяті мікроконтролера */
{
  FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 1M /* Код та константи у Flash */
  RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 128K /* Дані, стек і змінні у RAM */
}

__stack_start = ORIGIN(RAM) + LENGTH(RAM); /* Верх стека: кінець області RAM */
