% Problem 68. Kaprekar Steps
function y = KaprekarSteps(x)
    y = 0;
    if numel(unique(num2str(x))) == 1 && x >= 1111 || x >= 10000
        y = Inf
    else
        while x ~= 6174
            x = num2str(x);
            while strlength(x) ~= 4
                x = append('0', x);
            end
            x = str2num(sort(x, 'descend')) - str2num(sort(x));
            y = y+1;
        end
    end
end
