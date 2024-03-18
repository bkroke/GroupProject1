function finmsg = testdecode(secret_message)
    if mod(length(secret_message), 2) == 0
        half1 = secret_message(1:(length(secret_message)/2))
        half2 = secret_message(((length(secret_message)/2)+1):end)
    else
        half1 = secret_message(1:((length(secret_message)/2)+0.5))
        half2 = secret_message(((length(secret_message)/2)+1.5):end)
    end
    firsthalf2 = [];
    firsthalf3 = [];
    for n = 1:length(half1)
        if mod(n, 2) == 1
            firsthalf2 = [firsthalf2 half1(n)];
        else
            firsthalf3 = [firsthalf3 half1(n)];
        end

    end
    secondhalf2 = [];
    secondhalf3 = [];
    for n = 1:length(half2)
        if mod(n, 2) == 1
            secondhalf2 = [secondhalf2 half2(n)];
        else
            secondhalf3 = [secondhalf3 half2(n)];
        end

    end
disp(half1)
disp(half2)
disp(firsthalf2)
disp(firsthalf3)
disp(secondhalf2)
disp(secondhalf3)
firsthalf = [firsthalf2 firsthalf3]
secondhalf = [secondhalf2 secondhalf3]
total_length = length(firsthalf) + length(secondhalf)

decoded_numbers = zeros(1, total_length)
decoded_numbers(1:2:end) = firsthalf
decoded_numbers(2:2:end) = secondhalf

 flipfinal_numbers = [];
for ii = 1:size(decoded_numbers, 2)
    if decoded_numbers(ii) == 27
        decoded_numbers(ii) = 32; %assigns a vallue to 27 to spaces (ascii code 32)
        flipfinal_numbers = [flipfinal_numbers decoded_numbers(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code1 = decoded_numbers(ii) + (double('a')-1);
        flipfinal_numbers = [flipfinal_numbers code1];
    end
end
final_numbers = flip(flipfinal_numbers)
finmsg = char(final_numbers)
end
% for ii = 1:total_length
%     if mod(ii, 2) == 0
%         fin_msg = [fin_msg firsthalf(ii)];
%     else
%         fin_msg = [fin_msg secondhalf(ii)]
% 

