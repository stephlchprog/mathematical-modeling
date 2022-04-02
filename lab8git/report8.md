---
# Front matter
title: "Отчёт по лабораторной работе №8"
subtitle: "Модель конкуренции двух фирм"
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

Расмотреть модель конкуренции двух фирм для двух случае:
1) без учета социально-психологического фактора 
2) с учетом социально-психологического фактора 

# Теоретические сведения 

**Случай 1**

Рассмотрим две фирмы, производящие взаимозаменяемые товары
одинакового качества и находящиеся в одной рыночной нише. Последнее означает,
что у потребителей в этой нише нет априорных предпочтений, и они приобретут
тот или иной товар, не обращая внимания на знак фирмы.

В этом случае, на рынке устанавливается единая цена, которая определяется
балансом суммарного предложения и спроса. Иными словами, в рамках нашей
модели конкурентная борьба ведётся только рыночными методами. То есть,
конкуренты могут влиять на противника путем изменения параметров своего
производства: себестоимость, время цикла, но не могут прямо вмешиваться в
ситуацию на рынке («назначать» цену или влиять на потребителей какимлибо иным способом.)

$\frac{dM_1}{d\theta}=M_1 - \frac{b}{c_1}M_1M_2-\frac{a_1}{c_1}M_1^2$ ,

$\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2 - \frac{b}{c_1}M_1M_2 - \frac{a_2}{c_1}M_2^2$ 

где
$a_1=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2Nq}$ ,
$a_2=\frac{p_{cr}}{\tau_2^2\widetilde p_2^2Nq}$ ,
$b=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2\tau_2^2\widetilde p_2^2Nq}$ ,
$c_1=\frac{p_{cr}-\widetilde p_1}{\tau_1\widetilde p_1}$ ,
$c_2 = \frac{p_{cr}-\widetilde p_2}{\tau_2 \widetilde p_2}$

Также введена нормировка $t=c_1\theta$

Рост оборотных средств предприятий идет
независимо друг от друга. В математической модели этот факт отражается в
коэффициенте, стоящим перед членом
$M_1M_2$: в рассматриваемой задаче он
одинаковый в обоих уравнениях $(\frac{b}{c_1})$. Это было обозначено в условиях задачи.
Каждая фирма достигает свое максимальное значение объема продаж и остается на
рынке с этим значением, то есть каждая фирма захватывает свою часть рынка потребителей, которая не изменяется. 

**Случай 2**

Рассмотрим модель, когда, помимо экономического фактора влияния (изменение себестоимости, производственного цикла, использование кредита и
т.п.), используются еще и социально-психологические факторы – формирование
общественного предпочтения одного товара другому, не зависимо от их качества и
цены. В этом случае взаимодействие двух фирм будет зависеть друг от друга,
соответственно коэффициент перед $M_1M_2$ будет отличаться. 

$\frac{dM_1}{d\theta}=M_1 - \frac{b}{c_1}M_1M_2-\frac{a_1}{c_1}M_1^2$ ,

$\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2 - (\frac{b}{c_1} + l)M_1M_2 - \frac{a_2}{c_1}M_2^2$ 

где l - коэффициент социально-психологического фактора 

Первая фирма, несмотря на начальный рост,
достигнув своего максимального объема продаж, начитает нести убытки и, в итоге,
терпит банкротство. Динамика роста объемов оборотных средств второй фирмы
остается без изменения: достигнув максимального значения, остается на этом
уровне.

# Задание

## Вариант 68

**Случай 1.** Рассмотрим две фирмы, производящие взаимозаменяемые товары
одинакового качества и находящиеся в одной рыночной нише. Считаем, что в рамках
нашей модели конкурентная борьба ведётся только рыночными методами. То есть,
конкуренты могут влиять на противника путем изменения параметров своего
производства: себестоимость, время цикла, но не могут прямо вмешиваться в
ситуацию на рынке («назначать» цену или влиять на потребителей каким-либо иным способом.) Будем считать, что постоянные издержки пренебрежимо малы, и в
модели учитывать не будем. В этом случае динамика изменения объемов продаж
фирмы 1 и фирмы 2 описывается следующей системой уравнений:

$\frac{dM_1}{d\theta}=M_1 - \frac{b}{c_1}M_1M_2-\frac{a_1}{c_1}M_1^2$ ,

$\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2 - \frac{b}{c_1}M_1M_2 - \frac{a_2}{c_1}M_2^2$ 

где
$a_1=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2Nq}$ ,
$a_2=\frac{p_{cr}}{\tau_2^2\widetilde p_2^2Nq}$ ,
$b=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2\tau_2^2\widetilde p_2^2Nq}$ ,
$c_1=\frac{p_{cr}-\widetilde p_1}{\tau_1\widetilde p_1}$ ,
$c_2 = \frac{p_{cr}-\widetilde p_2}{\tau_2 \widetilde p_2}$

Также введена нормировка $t=c_1\theta$

**Случай 2.** Рассмотрим модель, когда, помимо экономического фактора
влияния (изменение себестоимости, производственного цикла, использование кредита и т.п.), используются еще и социально-психологические факторы –
формирование общественного предпочтения одного товара другому, не зависимо от
их качества и цены. В этом случае взаимодействие двух фирм будет зависеть друг
от друга, соответственно коэффициент перед
$M_1M_2$ будет отличаться. Пусть в
рамках рассматриваемой модели динамика изменения объемов продаж фирмы 1 и фирмы 2 описывается следующей системой уравнений:

$\frac{dM_1}{d\theta} = M_1 - (\frac{b}{c_1}+0.00068)M_1M_2 - \frac{a_1}{c_1}M_1^2$

$\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2 -\frac{b}{c_1}M_1M_2 -\frac{a_2}{c_1}M_2^2$

Для обоих случаев рассмотрим задачу со следующими начальными условиями и
параметрами:

$M_0^1 = 7, M_0^2=6.1$,
$p_{cr} = 38, N= 40,q= 1$
$\tau_1=19, \tau_2=25$,
$\widetilde p_1=12.5$ , $\widetilde p_2=8.9$

**Замечание**:
Значения $p_{cr}, \tilde p_{1,2}, N$
указаны в тысячах единиц, а значения $M_(1,2)$ указаны в млн. единиц.

**Обозначения:**

N – число потребителей производимого продукта.

τ – длительность производственного цикла

p – рыночная цена товара

p̃– себестоимость продукта, то есть переменные издержки на производство единицы
продукции.

q – максимальная потребность одного человека в продукте в единицу времени

$\theta =\frac{t}{c_1}$ - безразмерное время

1. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без
учета постоянных издержек и с веденной нормировкой для случая 1.
2. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без
учета постоянных издержек и с веденной нормировкой для случая 2.

# Ход работы

### Случай 1

$\frac{dM_1}{d\theta}=M_1 - \frac{b}{c_1}M_1M_2-\frac{a_1}{c_1}M_1^2$ ,

$\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2 - \frac{b}{c_1}M_1M_2 - \frac{a_2}{c_1}M_2^2$ 

где
$a_1=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2Nq}$ ,
$a_2=\frac{p_{cr}}{\tau_2^2\widetilde p_2^2Nq}$ ,
$b=\frac{p_{cr}}{\tau_1^2\widetilde p_1^2\tau_2^2\widetilde p_2^2Nq}$ ,
$c_1=\frac{p_{cr}-\widetilde p_1}{\tau_1\widetilde p_1}$ ,
$c_2 = \frac{p_{cr}-\widetilde p_2}{\tau_2 \widetilde p_2}$

Также введена нормировка $t=c_1\theta$

Код программы для случай 1(@fig:001) :

![Код программы случай 1](image/image1.png){ #fig:001 width=100% }

```
model lab81
parameter Real p_cr = 38;//критическая стоимость продукта
parameter Real tau1 = 19;//длительность производственного цикла формы 1
parameter Real p1= 12.5;//себестоимость продукта у фирмы 1
parameter Real tau2=25 ;//длительность производственного цикла фирмы 2
parameter Real p2= 8.9;//себестоимость продукта у фирмы 2
parameter Real N= 40;//число потребителей производимого продукта
parameter Real q= 1;//максимальная потребность одного человека в продукте в единицу времени

parameter Real a1= p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2= p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b= p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1= (p_cr-p1)/(tau1*p1);
parameter Real c2= (p_cr-p2)/(tau2*p2);

parameter Real M01=7;
parameter Real M02=6.1;

Real M1(start=M01);
Real M2(start=M02);
Real tetha;
equation
time=c1*tetha;
//первый случай
der(M1)=M1-(b/c1)*M1*M2 -(a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2-(b/c1)*M1*M2 - (a2/c1)*M2*M2;


end lab81;
```

График изменения оборотных средств фирмы 1 и фирмы 2 без учета социально-психологического фактора (@fig:002):

![График изменения оборотных средств фирмы 1 и фирмы 2 без учета социально-психологического фактора](image/image2.png){ #fig:002 width=100% }

### Cлучай 2

Код программы для случай 2(@fig:003) :

![Код программы случай 2](image/image3.png){ #fig:003 width=100% }

```
model lab82
parameter Real p_cr = 38;//критическая стоимость продукта
parameter Real tau1 = 19;//длительность производственного цикла формы 1
parameter Real p1= 12.5;//себестоимость продукта у фирмы 1
parameter Real tau2=25 ;//длительность производственного цикла фирмы 2
parameter Real p2= 8.9;//себестоимость продукта у фирмы 2
parameter Real N= 40;//число потребителей производимого продукта
parameter Real q= 1;//максимальная потребность одного человека в продукте в единицу времени

parameter Real a1= p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2= p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b= p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1= (p_cr-p1)/(tau1*p1);
parameter Real c2= (p_cr-p2)/(tau2*p2);

parameter Real M01=7;
parameter Real M02=6.1;

Real M1(start=M01);
Real M2(start=M02);
Real tetha;
equation
time=c1*tetha;
//второй случай 
der(M1)=M1 - (b/c1 + 0.00068)*M1*M2 - (a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

end lab82;

```
График изменения оборотных средств фирмы 1 и фирмы 2 с учетои социально-психологического фактора(@fig:004):

![График изменения оборотных средств фирмы 1 и фирмы 2 с учетои социально-психологического фактора](image/image4.png){ #fig:004 width=100% }

# Выводы

В ходе выполнения работы мы рассмотрели и построили модель конкуренция двух фирм для двух случаев :
1) без учета социально-психологического фактора 
2) с учетом социально-психологического фактора 

# Библиография{.unnumbered}
-	Родионов, Ю.В. Основы математического моделирования: учебное электронное изда-ние / Ю.В. Родионов, А.Д. Нахман ; Тамбовский государственный технический универ-ситет. – Тамбов : Тамбовский государственный технический университет (ТГТУ), 2018. – 111 с. : табл., граф. – Режим доступа: по подписке. – URL: https://biblioclub.ru/index.php?page=book&id=570456. – Библиогр. в кн. – ISBN 978-5-8265-1886-1. – Текст : электронный.
-	Самарский Александр Андреевич. Математическое моделирование. Идеи. Методы. Примеры [Текст] / А.А. Самарский, А.П. Михайлов. - 2-е изд., испр. - М. : Физматлит, 2002. - 320 с. : ил. - ISBN 5-92221-0120-Х : 115.94. (ЕТ 20)
-	Введение в математическое моделирование : учебное пособие / В.Н. Ашихмин, М.Б. Гитман, И.Э. Келлер [и др.]; Под ред. П.В. Трусова. - Электронные текстовые данные. - М. : Логос, 2015. - 440 с. : ил. - (Новая Университетская Библиотека). - ISBN 978-5-98704-637-1. URL: http://lib.rudn.ru/ProtectedView/Book/ViewBook/5847
-	Документация по системе Modelica – Режим доступа: https://www.modelica.org/
