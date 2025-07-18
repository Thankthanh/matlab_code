function [x, y, so_lan_lap] = hienanhinhthang(fxy, x0, xn, y0, N, e)
    h = (xn - x0) / N;
    x = x0:h:xn;
    y = zeros(1, N+1);
    y(1) = y0;
    so_lan_lap = zeros(1, N); % Theo từng bước

    for i = 1:N
        % Khởi tạo y dự đoán ban đầu
        yp = y(i);
        lap = 0;
        while true
            lap = lap + 1;
            y_new = y(i) + h/2 * (fxy(x(i), y(i)) + fxy(x(i+1), yp));
            if abs(y_new - yp) < e
                break;
            end
            yp = y_new;
        end
        y(i+1) = y_new;
        so_lan_lap(i) = lap;
    end
end
