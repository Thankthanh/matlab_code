% Ví dụ hàm f(x, y) = y - x^2 + 1
f = @(x, y) y - x.^2 + 1;
x0 = 0; xn = 5; y0 = 0.5; N = 25; e = 0.001;

[x1, y1] = ole(f, x0, xn, y0, N);
[x2, y2] = hienantrungdiem(f, x0, xn, y0, N);
[x3, y3, ~] = hienanhinhthang(f, x0, xn, y0, N, e);
[x4, y4] = RK(f, x0, xn, y0, N);

plot(x1, y1, 'r--o', x2, y2, 'g--*', x3, y3, 'b--s', x4, y4, 'k-', 'LineWidth', 1.5);
legend('Euler', 'Trung diem', 'Hinh thang', 'Runge-Kutta');
xlabel('x'); ylabel('y(x)');
title('So sanh cac phuong phap giai gan dung PTVP');
grid on;
