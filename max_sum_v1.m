function [summa,index] = max_sum(v,n)
summa = -inf;
index = 0;
if n > length(v)
    summa = 0;
    index = -1;
else
    for i = 1:(length(v) - n + 1)
        temp = 0;
        for j = i:(i + n - 1)
            temp = temp + v(j);
        end
        if temp > summa
            summa = temp;
            index = i;
        end
    end
end
