clc

//dados
tolerancia=0.1

x0 =2

deff('f=f(x)','f=x^4-2*x^2+3*x-10')

//resolucao
h=tolerancia/100

deff('d=d(x)','d=(f(x+h)-f(x))/h')
iteracao = 0
for i=1:1000
    xNovo = x0 - f(x0)/d(x0)
    
    Erro = abs(xNovo-x0)
    if(Erro<=tolerancia)
        break
    else
       x0 = xNovo 
    end
    iteracao = i
end
//solucao
xs = xNovo

disp("SOLUCAO XS = ",xs)
disp("ERRO = ",Erro)
disp("ITERACAO = ",i)
