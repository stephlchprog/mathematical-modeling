---
# Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Модель ''задача об эпидемии''"
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

Приобрести практические навыки при работе с моделью "задача об эпидемии".

# Теоретические сведения 

Предполагается, что некая популяция, состоящая из $N$ особей, (считаем, что популяция изолирована) подразделяется на три группы. Первая группа - это восприимчивые к болезни, но
пока здоровые особи, обозначим их через $S(t)$. Вторая группа – это число инфицированных особей, которые также при этом являются распространителями инфекции, обозначим их $I(t)$. А третья группа, обозначающаяся через $R(t)$ – это здоровые особи с иммунитетом к болезни.
До того, как число заболевших не превышает критического значения $I^*$, считаем, что все больные изолированы и не заражают здоровых. Когда $I(t) \geq I^*$, тогда инфицирование способны заражать восприимчивых к болезни особей.

Таким образом, скорость изменения числа $S(t)$ меняется по следующему
закону:

$$
\frac{dS}{dt}=
\begin{cases}
\ -\alpha S, I(t) > I^*\\
\ 0, I(t) \leq I^*
\end{cases}
$$

Поскольку каждая восприимчивая к болезни особь, которая, в конце концов, заболевает, сама становится инфекционной, то скорость изменения числа инфекционных особей представляет разность за единицу времени между заразившимися и теми, кто уже болеет и лечится, т.е.:

$$
\frac{dI}{dt}=
\begin{cases}
\ -\alpha S - \beta I, I(t) > I^*\\
\ -\beta I, I(t) \leq I^*
\end{cases}
$$

А скорость изменения выздоравливающих особей (при этом приобретающие иммунитет к болезни)

$$
\frac{dR}{dt} = \beta I
$$

Постоянные пропорциональности $\alpha\mathrm{ }$, $\beta\mathrm{ }$ - это коэффициенты заболеваемости и выздоровления соответственно.

Для того, чтобы решения соответствующих уравнений определялось однозначно, необходимо задать начальные условия. Считаем, что на начало эпидемии в момент времени $t = 0$ нет особей с иммунитетом к болезни $R(0)=0$, а число инфицированных и восприимчивых к болезни особей
$I(0)$ и $S(0)$ соответственно.

# Задание

## Вариант 68

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове ($N=10060$) в момент начала эпидемии ($t=0$) число заболевших людей (являющихся распространителями инфекции) I(0)=61, А число здоровых людей с иммунитетом к болезни $R(0)=23$. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени $S(0)=N-I(0)- R(0)$.
Постройте графики изменения числа особей в каждой из трех групп.

Рассмотрите, как будет протекать эпидемия в случае:

1) если $I_0 \leq I^*$

2) если $I_0 > I^*$

# Ход работы

$$
\frac{dI}{dt}=
\begin{cases}
\ -\alpha S - \beta I, I(t) > I^*\\
\ -\beta I, I(t) \leq I^*
\end{cases}
$$

a = 0.01 - коэффициент заболеваемости
b = 0.02 - коэффициент выздоровления
N = 10060 - общая численность популяции
I0 = 61 - количество инфицированных особей в начальный момент времени
S0 = N - I0 - R0 - количество восприимчивых к болезни особей в начальный момент времени
R0 = 23 - количество здоровых особей с иммунитетом в начальный момент времени

Для 1 случая я написала следующий код:

```
model lab6
parameter Real a = 0.01;//коэффициент заболеваемости
parameter Real b = 0.02;//коэффициент выздоровления
parameter Real N = 10060;//общая численность
parameter Real I0 = 61;//начальное кол-во инфицированных
parameter Real R0 = 23;//начальное кол-во с иммунитетом
parameter Real S0 = N-I0-R0;//начальное кол-во подверженных

Real S(start=S0);//подверженные
Real I(start=I0);//инфицированные
Real R(start=R0);//с иммунитетом

equation
//случай 1: I(0)<=I*
der(S)=0;
der(I)=-b*I;
der(R)=b*I;
end lab6;
```

Я выполнила проверку кода.

![Выполнение проверки для 1 модели.](image/image1.png){ #fig:001 width=100% }

После я делала установку симуляции.

![Установка Симуляции.](image/image4.png){ #fig:001 width=100% }

В итоге, я получила следующие график:

![Построение графика изменения числа особей в каждой из трех групп для случая $I_0 <= I^*$.](image/image5.png){ #fig:001 width=110% }

Для 2 случая я написала следующий код:

```
model lab62
parameter Real a = 0.01;//коэффициент заболеваемости
parameter Real b = 0.02;//коэффициент выздоровления
parameter Real N = 10060;//общая численность
parameter Real I0 = 61;//начальное кол-во инфицированных
parameter Real R0 = 23;//начальное кол-во с иммунитетом
parameter Real S0 = N-I0-R0;//начальное кол-во подверженных

Real S(start=S0);//подверженные
Real I(start=I0);//инфицированные
Real R(start=R0);//с иммунитетом

equation
//случай 2: I(0)>I*
der(S)=-a*S;
der(I)=a*S-b*I;
der(R)=b*I;

end lab62;
```
Я выполнила проверку кода.

![Выполнение проверки для 2 модели.](image/image2.png){ #fig:001 width=100% }

После я делала установку симуляции.

![Установка Симуляции.](image/image6.png){ #fig:001 width=100% }

В итоге, я получила следующие график:

![Построение графика изменения числа особей в каждой из трех групп для случая $I_0 > I^*$.](image/image3.png){ #fig:001 width=110% }

# Выводы

Я приобрела практические навыки при работе с моделью "задача об эпидемии".

# Библиография{.unnumbered}
-	Родионов, Ю.В. Основы математического моделирования: учебное электронное изда-ние / Ю.В. Родионов, А.Д. Нахман ; Тамбовский государственный технический универ-ситет. – Тамбов : Тамбовский государственный технический университет (ТГТУ), 2018. – 111 с. : табл., граф. – Режим доступа: по подписке. – URL: https://biblioclub.ru/index.php?page=book&id=570456. – Библиогр. в кн. – ISBN 978-5-8265-1886-1. – Текст : электронный.
-	Самарский Александр Андреевич. Математическое моделирование. Идеи. Методы. Примеры [Текст] / А.А. Самарский, А.П. Михайлов. - 2-е изд., испр. - М. : Физматлит, 2002. - 320 с. : ил. - ISBN 5-92221-0120-Х : 115.94. (ЕТ 20)
-	Введение в математическое моделирование : учебное пособие / В.Н. Ашихмин, М.Б. Гитман, И.Э. Келлер [и др.]; Под ред. П.В. Трусова. - Электронные текстовые данные. - М. : Логос, 2015. - 440 с. : ил. - (Новая Университетская Библиотека). - ISBN 978-5-98704-637-1. URL: http://lib.rudn.ru/ProtectedView/Book/ViewBook/5847
-	Документация по системе Modelica – Режим доступа: https://www.modelica.org/
