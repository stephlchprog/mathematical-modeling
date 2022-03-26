---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
subtitle: Эффективность рекламы
author: Лёшьен Стефани
institute: RUDN University, Moscow, Russian Federation
date: 19 March, 2022, Moscow, Russian Federation

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---
# Цель выполнения лабораторной работы

Расмотреть модель рекламной компании.

# Задание лабораторной работы
### Вариант 68
Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением :

1. $\frac{dn}{dt} =0.385+0.000025n(t))(N-n(t))$
2. $\frac{dn}{dt}=0.000014+0.15n(t))(N-n(t))$
3. $\frac{dn}{dt}=0.16sin(t)+0.18cos(t)n(t))(N-n(t))$

При этом объем аудитории $N=1376$, в начальный момент о товаре знает 6 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.


# Результаты выполнения лабораторной работы

![График распространения информации о товаре гдн $\alpha _1 = 0.385$ и $\alpha _2 = 0.000025$](image/image4.png){ #fig:004 width=100% }

# Результаты выполнения лабораторной работы

![График распространения информации о товаре где $\alpha _1 = 0.000014$ и $\alpha _2 = 0.15$](image/image6.png){ #fig:006 width=100% }

# Результаты выполнения лабораторной работы
![График распространения информации о товаре гдн $\alpha _1 = 0.16sin(t)$ и $\alpha _2 = 0.18cos(t)$](image/image8.png){ #fig:008 width=100% }


# Итоги выполнения лабораторной работы

- изучена модель рекламной компании;
- получены навыки работы с openmodelica;
- построено 3 графикa