% represent a sparse matrix with a cell vector whose first element is a 2-element vector representing the size of the sparse matrix
% the second element is a scalar specifying the default value of the sparse matrix
% each successive element of the cell vector is a 3-element vector representing one element of the sparse matrix that has a value other than the default
% the three elements are the row index, the column index and the actual value

function matrix = sparse2matrix(cellvec)
z = zeros(cellvec{1});
z(:, :, 1) = cellvec{2};
s = size(cellvec,2)
for i=3:s
    z(cellvec{i}(1),cellvec{i}(2)) = cellvec{i}(3);
end
matrix = z;
end
