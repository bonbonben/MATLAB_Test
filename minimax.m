% input: a matrix
% output: mmr, a row vector containing |max - min| in each row
%         mmm, |max - min| in the entire matrix

function [mmr,mmm] = minimax(A)
t = max(A,[],2) - min(A,[],2)
mmr = t'
mmm = max(A,[],'all') - min(A,[],'all')
end
