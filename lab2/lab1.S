.syntax unified
.cpu cortex-m4
.thumb

.global lab1
.type lab1, %function

lab1:
  push {r4, r5, r6, r7, lr} // збереження робочих регістрів і LR

  movs r0, #6 // a
  movs r1, #5 // b
  movs r2, #4 // c

  mul  r3, r0, r1 // r3 = a * b
  cmp  r3, #10 // перевірка умови a * b >= 10
  bge  use_or // перехід до гілки з OR

  mul  r0, r3, r2 // r0 = a * b * c
  b    finish // завершення обчислення

use_or:
  orr  r4, r0, r1 // r4 = a OR b
  mul  r0, r4, r2 // r0 = (a OR b) * c

finish:
  pop  {r4, r5, r6, r7, pc} // повернення з функції
.size lab1, .-lab1
