function [x, y] = ole(fxy, x0, xn, y0, N)
    h = (xn - x0) / N;
    x = x0:h:xn;
    y = zeros(1, N+1);
    y(1) = y0;

    for i = 1:N
        y(i+1) = y(i) + h * fxy(x(i), y(i));
    end
end
