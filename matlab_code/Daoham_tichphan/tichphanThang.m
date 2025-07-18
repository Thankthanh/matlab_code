function [L, I] = tichphanThang(fx, a, b, N)
    % fx - ham so can tich phan
    % a  - can duoi cua khoang tich phan
    % b  - can tren cua khoang tich phan
    % N  - so luong phan khoang (buoc nhay)
    % L  - gia tri tich phan xap xi lam tron den 5 chu so thap phan
    % I  - gia tri tich phan xap xi

    h = (b - a) / N;
    T = 0;
    for i = 1:N-1
        T = T + fx(a + i * h);  % Dùng function handle trực tiếp
    end
    I = (h / 2) * (fx(a) + fx(b) + 2 * T);
    L = round(I, 5);
end
