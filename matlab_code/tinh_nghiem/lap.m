function [nghiem, solanlap] = lap(fp, a, b, saiso)
    % Lap don: x = g(x), g = fp
    num_points = 100;
    h = 1e-6;
    x_vals = linspace(a, b, num_points);
    qmax = 0;

    for i = 1:num_points
        x0 = x_vals(i);
        gpx = abs((fp(x0 + h) - fp(x0 - h)) / (2 * h));
        if gpx > qmax
            qmax = gpx;
        end
    end

    if qmax >= 1
        fprintf('⚠️  Ham khong hoi tu vi max |g''(x)| = %.4f >= 1\n', qmax);
        nghiem = NaN; solanlap = 0;
        return;
    end

    x0 = (a + b)/2;
    solanlap = 0;

    while true
        x1 = fp(x0);
        solanlap = solanlap + 1;
        if abs(x1 - x0) < saiso
            break;
        end
        x0 = x1;
    end

    nghiem = x1;
end
