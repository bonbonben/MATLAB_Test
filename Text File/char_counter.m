% charnum = char_counter('simple.txt','a') should return 3
% If the file is not found or character is not a valid char, the function return -1.

function charnum = char_counter(fname,character)
fid = fopen(fname,'r');
if fid < 0
    charnum = -1;
    return
end
if ischar(character) == 0
    charnum = -1;
    return
end
inhalt = fscanf (fid, '%c');
charnum = count(inhalt,character);
end
