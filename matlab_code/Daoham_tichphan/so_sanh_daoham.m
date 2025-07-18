function so_sanh_daoham()
    % Dữ liệu
    xa = [0.1 0.3 0.5 0.7 0.9];
    ya = [0.1002 0.3047 0.5236 0.7754 1.1198];
    x = 0.7;

    % Gọi hàm gần đúng đạo hàm
    df_approx = tinh_daoham(xa, ya, x);

    % Đạo hàm chính xác: f(x) = arcsin(x) → f'(x) = 1 / sqrt(1 - x^2)
    df_exact = 1 / sqrt(1 - x^2);

    % Sai số
    sai_so = abs(df_approx - df_exact);

    % In kết quả
    fprintf('=== So sanh dao ham tai x = %.2f ===\n', x);
    fprintf('Gan dung (Taylor - sai phan tien): %.6f\n', df_approx);
    fprintf('Chinh xac:                         %.6f\n', df_exact);
    fprintf('Sai so:                            %.2e\n', sai_so);
end
