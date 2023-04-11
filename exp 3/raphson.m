
f = @(x) x^3 - x - 1;
df = @(x) 3*x^2 - 1;

x0 = input('Enter the value of initial solution quess= ');

if df(x0) ==0
    fprintf('not a good initial solution\n');
    return
end

for i=1:50
    
    x1 = x0-f(x0)/df(x0);
    fprintf('%i %f %f\n',i,x1,abs(f(x1)));
    
    if abs(f(x1)) < 1.0E-6
        return
    end
    
end