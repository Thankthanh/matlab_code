function so_sanh_tich_phan()
    % Hàm cần tích phân
    fx = @(x) x.^3 .* sin(x) + x .* cos(x);
    a = 0; b = 1;

    % So sánh với N = 10, 20, 50
    fprintf('=== So sanh tich phan tren [%g, %g] ===\n', a, b);
    fprintf('%5s | %12s | %12s | %12s\n', 'N', 'Hinh Thang', 'Simpson', 'Integral');

    for N = [10, 20, 50]
        % Hình thang
        [L_ht, ~] = tichphanThang(fx, a, b, N);

        % Simpson (N phải chẵn)
        if mod(N,2) ~= 0
            N_simpson = N + 1;
        else
            N_simpson = N;
        end
        [L_sp, ~] = tichphanSimpson(fx, a, b, N_simpson);

        % Chính xác với integral của MATLAB
        exact = integral(fx, a, b);
        exact = round(exact, 5);

        fprintf('%5d | %12.5f | %12.5f | %12.5f\n', N, L_ht, L_sp, exact);
    end
end
