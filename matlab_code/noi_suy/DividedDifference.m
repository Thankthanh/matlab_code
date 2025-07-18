function d = DividedDifference(xa, ya)
    n = length(xa);
    d = ya;
    for j = 2:n
        for i = n:-1:j
            d(i) = (d(i) - d(i-1)) / (xa(i) - xa(i-j+1));
        end
    end
end
