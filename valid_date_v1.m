function valid = valid_date(year,month,day)
if ~isscalar(year) || year<1 || year ~= fix(year)
    valid = false;
    return
end

leap = 0;
if (mod(year,4) == 0) && (mod(year,100) ~= 0)
    leap = 1;
end
if (mod(year,4) == 0) && (mod(year,100) == 0) && (mod(year,400) == 0)
    leap = 1;
end

if (month == 1) || (month == 3) || (month == 5) || (month == 7) || (month == 8) || (month == 10) || (month == 12)
    if (day <= 31) && (day >0)
        valid = true;
    else
        valid = false;
    end
elseif (month == 4) || (month == 6) || (month == 9) || (month == 11)
    if (day <= 30) && (day >0)
        valid = true;
    else
        valid = false;
    end
elseif (month == 2) && (leap == 0)
    if (day <= 28) && (day >0)
        valid = true;
    else
        valid = false;
    end
elseif (month == 2) && (leap == 1)
    if (day <= 29) && (day >0)
        valid = true;
    else
        valid = false;
    end
else
    valid = false;
end
