function indices = saddle(M)
[m,n] = size(M);
indices = [];
for i = 1:m
    for j = 1:n
        if (M(i,j) == max(M(i,:)) && M(i,j) == min(M(:,j)))
            indices=[indices; i,j];
        end
    end
end
end
