function result = NewtonForm(xa, da, x)
    n = length(da);
    result = da(1);
    prod = 1;
    for i = 2:n
        prod = prod * (x - xa(i-1));
        result = result + da(i) * prod;
    end
end
