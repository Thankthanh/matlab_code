function so_sanh_noi_suy()
    % Dữ liệu đầu vào
    xa = [0.1, 0.2, 0.3, 0.4];
    ya = [0.09983, 0.19867, 0.29552, 0.38942];

    x_test = [0.14, 0.16];

    fprintf('=== So sanh Lagrange va Newton ===\n');

    for i = 1:length(x_test)
        x = x_test(i);

        % Goi cac ham noi suy
        y_lag = Lagrange(xa, ya, x);
        y_new = NewtonInterpolation(xa, ya, x);
        y_true = sin(x);

        % Sai so
        err_lag = abs(y_lag - y_true);
        err_new = abs(y_new - y_true);

        % In ket qua
        fprintf('\n--- x = %.2f ---\n', x);
        fprintf('sin(%.2f)         = %.6f\n', x, y_true);
        fprintf('Lagrange(%.2f)    = %.6f | Sai so = %.2e\n', x, y_lag, err_lag);
        fprintf('Newton(%.2f)      = %.6f | Sai so = %.2e\n', x, y_new, err_new);
    end
end
