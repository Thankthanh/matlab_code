function [x, y] = RK(fxy, x0, xn, y0, N)
    h = (xn - x0) / N;
    x = x0:h:xn;
    y = zeros(1, N+1);
    y(1) = y0;

    for i = 1:N
        k1 = fxy(x(i), y(i));
        k2 = fxy(x(i) + h/2, y(i) + h/2 * k1);
        k3 = fxy(x(i) + h/2, y(i) + h/2 * k2);
        k4 = fxy(x(i) + h,   y(i) + h   * k3);
        y(i+1) = y(i) + h/6 * (k1 + 2*k2 + 2*k3 + k4);
    end
end

