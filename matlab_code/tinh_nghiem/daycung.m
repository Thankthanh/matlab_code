function [nghiem, solanlap] = daycung(f, a, b, saiso)
    x0 = a;
    x1 = b;
    solanlap = 0;

    while true
        fx0 = f(x0);
        fx1 = f(x1);
        if fx0 == fx1
            error('f(x0) = f(x1), khong ap dung duoc day cung');
        end

        x2 = x1 - fx1 * (x1 - x0) / (fx1 - fx0);
        solanlap = solanlap + 1;

        if abs(x2 - x1) < saiso
            break;
        end

        x0 = x1;
        x1 = x2;
    end

    nghiem = x2;
end
