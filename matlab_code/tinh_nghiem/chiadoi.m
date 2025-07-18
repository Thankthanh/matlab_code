function [nghiem, solanlap] = chiadoi(f, a, b, saiso)
    if f(a) * f(b) >= 0
        error('f(a) * f(b) >= 0');
    end

    solanlap = 0;
    while abs(b - a) > saiso
        c = (a + b)/2;
        solanlap = solanlap + 1;
        if abs(f(c)) < saiso
            nghiem = c;
            return;
        end
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    nghiem = (a + b)/2;
end
