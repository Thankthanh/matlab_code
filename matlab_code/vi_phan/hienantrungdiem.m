function [x, y] = hienantrungdiem(fxy, x0, xn, y0, N)
    % Phuong phap hien an trung diem giai phuong trinh vi phan y' = f(x, y)
    % Input:
    %   fxy - ham vi phan f(x,y)
    %   x0  - gia tri dau cua x
    %   xn  - gia tri cuoi cua x
    %   y0  - dieu kien ban dau cua y
    %   N   - so doan con (chia nho khoang x0 -> xn)
    %
    % Output:
    %   x - vector chua cac gia tri x
    %   y - vector chua cac gia tri y tuong ung

    h = (xn - x0) / N;             % Buoc nhay h
    x = linspace(x0, xn, N+1);     % Chia mang x deu N doan
    y = zeros(1, N+1);             % Mang chua gia tri y
    y(1) = y0;                     % Dieu kien ban dau

    for i = 1:N
        % Du doan y tam thoi tai lan lap thu 1
        y_temp = y(i) + h * fxy(x(i), y(i));
        % Sua lai y bang cong thuc trung diem
        y(i+1) = y(i) + h * fxy(x(i) + h/2, y(i) + (h/2) * fxy(x(i), y(i)));
    end
end
