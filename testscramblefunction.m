function [flipnew_sec_msg] = testscramblefunction(a, b)
    first_half1 = [];
    first_half2 = [];
    first_half3 = [];
    second_half1 = [];
    second_half2 = [];
    second_half3 = [];
for jj = 1:2
if isequal(a, b)
    for n = 1:length(a)
        if mod(n, 2) == 1
            first_half1 = [first_half1 a(n)];
        else
            second_half1 = [second_half1 a(n)];
        end
    end
    a = first_half1;
    b = second_half1;
else
    for n = 1:length(a)
        if mod(n, 2) == 1
            first_half2 = [first_half2 a(n)];
        else
            first_half3 = [first_half3 a(n)];
        end
    end
    for ii = 1:length(b)
        if mod(ii, 2) == 1
            second_half2 = [second_half2 b(ii)];
        else
            second_half3 = [second_half3 b(ii)];
        end
    end
end
end
flipnew_sec_msg = [first_half2 first_half3 second_half2 second_half3]

end

