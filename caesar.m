function coded = caesar(M, n)
%Converts string into double
num = double(M);
num2 = num;
N = n - 95 * fix(n/95);
for i = 1:length(num)
    %If ASCII value goes below 32
    if  num(i) + N < 32
        num2(i) = 126 - (31- num(i) - N);
    %If ASCII value goes beyond 126
    elseif num(i) + N > 126
        num2(i) = 32 + (num(i) + N -127);
    %If ASCII value goes normal
    else
        num2(i) = num(i) + N;
    end
coded = char(num2);
end
