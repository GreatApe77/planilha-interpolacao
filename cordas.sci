clc
//dados
tolerancia=0.1
a=1
b=2

deff('f=f(x)','f=x^4-2*x^2+3*x-10')

if f(a)*f(b)<0 then
    //(a*f(b)-b*f(a))/(f(b)-f(a))
    x0= (a*f(b)-b*f(a))/(f(b)-f(a))
    
    for i = 1:1000
        if f(x0) * f(a)<0
            b= x0    
        else
            a=x0
        end
        xNovo = (a*f(b)-b*f(a))/(f(b)-f(a))
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
    xs = (a*f(b)-b*f(a))/(f(b)-f(a))
    disp("SOLUCAO XS=",xs)
    disp("ERRO=",Erro)
else
    
    disp('TROCAR INTERVALO')
    
end
