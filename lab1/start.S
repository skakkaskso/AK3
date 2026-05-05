.syntax unified
.cpu cortex-m4
.thumb

.global vtable
.global reset_handler

/* Таблиця векторів: SP та reset */
.type vtable, %object
vtable:
  .word __stack_start // Адреса вершини стека
  .word __hard_reset__+1 // Перехід до reset у Thumb
.size vtable, .-vtable

__hard_reset__:
  ldr r0, =__stack_start // Завантажити початок стека
  mov sp, r0 // Записати адресу у SP
  b __hard_reset__ // Залишитися у циклі
