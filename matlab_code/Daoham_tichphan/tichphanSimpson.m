function [L, I] = tichphanSimpson(fx, a, b, N)
    % fx - function handle
    % a, b - giới hạn tích phân
    % N - số lượng đoạn con, phải chẵn

    if mod(N, 2) ~= 0
        error('N phai la so chan');
    end

    h = (b - a) / N;

    T1 = fx(a) + fx(b);  % Giá trị tại hai đầu mút
    T2 = 0;  % Tổng các giá trị tại bước lẻ
    T3 = 0;  % Tổng các giá trị tại bước chẵn

    for i = 1:2:N-1
        T2 = T2 + fx(a + i * h);  % Bước lẻ
    end

    for i = 2:2:N-2
        T3 = T3 + fx(a + i * h);  % Bước chẵn
    end

    I = (h / 3) * (T1 + 4 * T2 + 2 * T3);
    L = round(I, 5);
end
