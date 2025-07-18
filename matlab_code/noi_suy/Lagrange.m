function y = Lagrange(xa, ya, x)
    n = length(xa);
    y = 0;
    for i = 1:n
        L = 1;
        for j = 1:n
            if j ~= i
                L = L * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        y = y + ya(i) * L;
    end
end
