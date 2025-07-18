function df = tinh_daoham(xa, ya, x)
    % xa - mang du lieu cac gia tri x da biet
    % ya - mang du lieu cac gia tri y tuong ung voi xa
    % x  - gia tri can tinh gan dung dao ham
    % df - gia tri gan dung cua dao ham tai x

    h = xa(2) - xa(1);       % Tinh buoc nhay h
    n = length(xa);          % So luong diem du lieu
    df = NaN;                % Khoi tao gia tri dao ham voi NaN de kiem tra

    % Kiem tra va tinh gan dung dao ham su dung cong thuc sai phan huu han bac nhat
    for i = 1:n-1
        if xa(i) == x
            df = (ya(i+1) - ya(i)) / h;  % Tinh dao ham tai diem x
            break;                       % Thoat khoi vong lap khi tim thay x
        end
    end
end
