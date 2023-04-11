
f=@(x) x^2-x-2;

x_1= inout('Enter the value of x_1= ');
x_u= input('Enter the value of x_u= ');

if f(x_1)*f(x_u) < 0
    fprintf('There is not solution in the given interval ');
    return
    
elseif f(x_1)==0
    fprintf('%f is the required solution ',x_1);
    return
elseif f(x_u)==0
    fprintf('%f is the required solution ',x_u);
    return
end



fprintf('i           x_1       x_u             x_n\n');
fprintf('--------------------------------------\n');

for i=1:20
    
    
    m=x_u-(x_1-x_u)*f(x_u)/(f(x_1)-f(x_u));
    
    
    fprintf('%f %f %f %f\n'i,x_1,x_u,xm);
    
    if abs(f(xm)) < 0.0001
        return
    end
    
    if f(x_1)*f(xm) < 0
    x_u*xm;
    
    elseif f(xm)*f(x_u) < 0
        x_1*xm
    end
end