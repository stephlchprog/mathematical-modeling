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
