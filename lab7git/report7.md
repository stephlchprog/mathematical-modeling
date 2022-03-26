---
# Front matter
title: "Отчёт по лабораторной работе №7"
subtitle: "Эффективность рекламы"
author: "Лёшьен Стефани"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
  name: el
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text

---

# Цель работы

Расмотреть модель рекоамной компании.

# Теоретические сведения 

Модель рекламной кампании описывается следующими величинами.
Считаем, что $\frac{dn}{dt}$  - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить, t - время, прошедшее с начала рекламной кампании, $n(t)$ - число уже информированных клиентов. Эта величина пропорциональна числу покупателей, еще не знающих о нем, это описывается следующим образом:
$\alpha 1(t)(N-n(t))$, где N - общее число потенциальных платежеспособных покупателей, $\alpha _1(t)>0$- характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную
информацию среди потенциальных покупателей, не знающих о нем (в этом случае
работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной
$\alpha _2(t)n(t)(N-n(t))$ , эта величина увеличивается с увеличением потребителей узнавших о товаре. Математическая модель распространения рекламы описывается уравнением:

$\frac{dn}{dt}=(\alpha _1(t)+\alpha _2(t)n(t))(N-n(t))$

При $\alpha _1(t)\gg\alpha _2(t)$ получается модель типа модели Мальтуса, решение которой имеет вид (@fig:001):

![График решение уравнения модели Мальтуса](image/image1.png){ #fig:001 width=100% }

В обратном случае, при $\alpha _1(t)<<\alpha _2(t)$ получаем уравнение логистической кривой (@fig:002):

![График логистической кривой](image/image2.png){ #fig:002 width=100% }

# Задание

## Вариант 68

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением :

1. $\frac{dn}{dt} ={0.385+0.000025n(t))(N-n(t))$
2. $\frac{dn}{dt}={0.000014+0.15n(t))(N-n(t))$
3. $\frac{dn}{dt}={0.16sin(t)+0.18cos(t)n(t))(N-n(t))$

При этом объем аудитории $N=1376$, в начальный момент о товаре знает 6 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Ход работы

Начальные условия :

$N=1376$ - максимальное количество людей,которых может заинтересовать товар

$n_0=6$ - количество людей, знающих о товаре в начальный момент времени

### Случай 1
Код программы для случай 1(@fig:003) :

![Код программы случай 1](image/image3.png){ #fig:003 width=100% }

$\frac{dn}{dt} ={0.385+0.000025n(t))(N-n(t))$

$\alpha _1 = 0.385$ - характеризует интенсивность рекламной кампании

$\alpha _2 = 0.000025$ - сарафанное радио
```
model lab71

parameter Real N = 1376;//максимальное количество людей,которых может заинтересовать товар
parameter Real n0 = 6;// количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1 = 0.385;
parameter Real alpha2 = 0.000025;

Real n(start=n0);


equation
//случай 1
der(n)=(alpha1+alpha2*n)*(N-n);

end lab71;
```

График распространения информации о товаре с учетом платной рекламы и сарафанного радио(@fig:004):

![График распространения информации о товаре гдн $\alpha _1 = 0.385$ и $\alpha _2 = 0.000025$](image/image4.png){ #fig:004 width=100% }

### Cлучай 2

Код программы для случай 2(@fig:005) :

![Код программы случай 2](image/image5.png){ #fig:005 width=100% }

$\frac{dn}{dt}={0.000014+0.15n(t))(N-n(t))$

$\alpha _1 = 0.000014$ - характеризует интенсивность рекламной кампании

$\alpha _2 = 0.15$ - сарафанное радио
```
model lab72

parameter Real N = 1376;//максимальное количество людей,которых может заинтересовать товар
parameter Real n0 = 6;// количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1 = 0.000014;
parameter Real alpha2 = 0.15;

Real n(start=n0);


equation
//случай 2
der(n)=(alpha1+alpha2*n)*(N-n);

end lab72;

```
График распространения информации о товаре с учетом платной рекламы и сарафанного радио(@fig:006):

![График распространения информации о товаре гдн $\alpha _1 = 0.000014$ и $\alpha _2 = 0.15$](image/image6.png){ #fig:006 width=100% }

### Cлучай 3
Код программы для случай 3(@fig:007) :

![Код программы случай 3](image/image7.png){ #fig:007 width=100% }

$\frac{dn}{dt}={0.16sin(t)+0.18cos(t)n(t))(N-n(t))$

$\alpha _1 = 0.16sin(t)$ - характеризует интенсивность рекламной кампании

$\alpha _2 = 0.18cos(t)$ - сарафанное радио
```
model lab73

parameter Real N = 1376;//максимальное количество людей,которых может заинтересовать товар
parameter Real n0 = 6;// количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1 = 0.16;
parameter Real alpha2 = 0.18;

Real n(start=n0);


equation
//случай 3
der(n)=(alpha1*sin(time)+alpha2*cos(time)*n)*(N-n);

end lab73;
```
График распространения информации о товаре с учетом платной рекламы и сарафанного радио(@fig:008):

![График распространения информации о товаре гдн $\alpha _1 = 0.16sin(t)$ и $\alpha _2 = 0.18cos(t)$](image/image8.png){ #fig:008 width=100% }


# Выводы

В ходе выполнения работы я приобрела практические навыки при работе с моделью рекламной компании.

# Библиография{.unnumbered}
-	Родионов, Ю.В. Основы математического моделирования: учебное электронное изда-ние / Ю.В. Родионов, А.Д. Нахман ; Тамбовский государственный технический универ-ситет. – Тамбов : Тамбовский государственный технический университет (ТГТУ), 2018. – 111 с. : табл., граф. – Режим доступа: по подписке. – URL: https://biblioclub.ru/index.php?page=book&id=570456. – Библиогр. в кн. – ISBN 978-5-8265-1886-1. – Текст : электронный.
-	Самарский Александр Андреевич. Математическое моделирование. Идеи. Методы. Примеры [Текст] / А.А. Самарский, А.П. Михайлов. - 2-е изд., испр. - М. : Физматлит, 2002. - 320 с. : ил. - ISBN 5-92221-0120-Х : 115.94. (ЕТ 20)
-	Введение в математическое моделирование : учебное пособие / В.Н. Ашихмин, М.Б. Гитман, И.Э. Келлер [и др.]; Под ред. П.В. Трусова. - Электронные текстовые данные. - М. : Логос, 2015. - 440 с. : ил. - (Новая Университетская Библиотека). - ISBN 978-5-98704-637-1. URL: http://lib.rudn.ru/ProtectedView/Book/ViewBook/5847
-	Документация по системе Modelica – Режим доступа: https://www.modelica.org/
