model task3 //x''+w0^2x=0
parameter Real w = 5;//w0^2 - собственная частота колебаний в квадрате
parameter Real g = 0.5; // - параметр, характеризующий потери энергии
parameter Real x0 = -0.5;// начальное условие
parameter Real y0 = 0.5;// начальное условие
Real x(start=x0);
Real y(start=y0);
equation// система диф уравнений
der(x)=y;
der(y)=0.5*cos(5*time)-g*y-w*x;
end task3;
