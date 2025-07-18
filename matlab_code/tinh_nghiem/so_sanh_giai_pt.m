function so_sanh_giai_pt()
    clc;

    % PHUONG TRINH 1
    f1 = @(x) 3*x.^3 - 8*x.^2 - 20*x + 16;
    fp1 = @(x) x - 0.01 * f1(x);  % Lap don voi alpha = 0.01
    a1 = 0.2; b1 = 1;
    saiso = 0.005;
    fprintf('\n=== Phuong trinh 1: 3x^3 - 8x^2 - 20x + 16 ===\n');
    so_sanh_tat_ca(f1, fp1, a1, b1, saiso);

    % PHUONG TRINH 2
    f2 = @(x) x - sin(x) - 0.25;
    fp2 = @(x) sin(x) + 0.25;
    a2 = -1; b2 = 2;
    fprintf('\n=== Phuong trinh 2: x - sin(x) - 0.25 ===\n');
    so_sanh_tat_ca(f2, fp2, a2, b2, saiso);
end

function so_sanh_tat_ca(f, fp, a, b, saiso)
    fprintf('\n-- Chia doi --\n');
    [x1, n1] = chiadoi(f, a, b, saiso);
    fprintf('x = %.6f, so lan lap = %d\n', x1, n1);

    fprintf('\n-- Lap don --\n');
    [x2, n2] = lap(fp, a, b, saiso);
    fprintf('x = %.6f, so lan lap = %d\n', x2, n2);

    fprintf('\n-- Tiep tuyen --\n');
    [x3, n3] = tieptuyen(f, a, b, saiso);
    fprintf('x = %.6f, so lan lap = %d\n', x3, n3);

    fprintf('\n-- Day cung --\n');
    [x4, n4] = daycung(f, a, b, saiso);
    fprintf('x = %.6f, so lan lap = %d\n', x4, n4);
end
