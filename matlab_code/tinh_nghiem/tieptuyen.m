function [nghiem, solanlap] = tieptuyen(f, a, b, saiso)
    syms x;
    df = matlabFunction(diff(f(x)));
    f = matlabFunction(f(x));

    x0 = (a + b)/2;
    solanlap = 0;

    while true
        fx = f(x0);
        dfx = df(x0);
        if dfx == 0
            error('f''(x) = 0');
        end
        x1 = x0 - fx / dfx;
        solanlap = solanlap + 1;
        if abs(x1 - x0) < saiso
            break;
        end
        x0 = x1;
    end

    nghiem = x1;
end
