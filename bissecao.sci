clc
//dados
tolerancia=0.1
a=1
b=2

deff('f=f(x)','f=x^4-2*x^2+3*x-10')

if f(a)*f(b)<0 then
    
    x0= (a+b)/2
    
    for i = 1:1000
        if f(x0) * f(a)<0
            b= x0    
        else
            a=x0
        end
        xNovo = (a+b)/2
        Erro = abs(xNovo-x0)
        if(Erro<=tolerancia) 
            break
        else
            x0 = xNovo
        
        end
     end
    x0 = xNovo
    if f(x0) * f(a)<0
        b= x0    
    else
           a=x0
    end
    xs = (a+b)/2
    disp("SOLUCAO XS=",xs)
    disp("ERRO=",Erro)
else
    
    disp('TROCAR INTERVALO')
    
end
