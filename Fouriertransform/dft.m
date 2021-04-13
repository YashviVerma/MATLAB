%function to find DFT:
function arr = dft(X)
    l = length(X);
    arr = zeros(l,1);
    for k = 1:l
        arr(k) = 0;
        for n = 1:l
            arr(k) = arr(k)+(X(n)*exp((-1j)*2*pi*(n-1)*(k-1)/l));
        end
    end
end
