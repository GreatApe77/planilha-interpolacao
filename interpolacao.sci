//==Mateus Arruda Navarro Albuquerque==
clc
//Dados
xDado = [1,2,5,87,100]
yDado = [4,8,10,160,210]
xPrevisao = [5]

//Resolucao

A = [xDado'.^0,xDado'.^1,xDado'.^2,xDado'.^3,xDado'.^4]
B= yDado'
C= inv(A)*B

//Coeficiente Polinomiais

a0=C(1)
a1=C(2)
a2=C(3)
a3=C(4)
a4=C(5)

//Previsao

yPrevisao = a0+ a1*xPrevisao^1+ a2*xPrevisao^2+ a3*xPrevisao^3+ a4*xPrevisao^4

disp("Coeficientes polinomiais: ",C)
disp("PREVISOES DE Y: ",yPrevisao)
