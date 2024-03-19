function last_message = key_decode(secret_message)

    key = 'abc';
    ascii_key = double(key); %converts each letter in the string sec_msg to its ASCII code
    new_key = []; %this will be populated with the values of sec_msg after being transformed with our key 
for ii = 1:size(ascii_key, 2)
    if ascii_key(ii) == 32
        ascii_key(ii) = 27; %assigns a vallue to 27 to spaces (ascii code 32)
        new_key = [new_key ascii_key(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code = ascii_key(ii) - (double('a')-1);
        new_key = [new_key code];
    end
end
disp(new_key);
%flipnew_key = flip(new_key)
counter = 1;
flipsecret_message = secret_message
length(new_key)
disp(new_key)
disp(flipsecret_message)

while ~isequal(flip(flipsecret_message(end-2:end)), new_key)
    %[last_message] = scramble_msg(secret_message)
    first_half1 = [];
    second_half1 = [];
    for n = 1:length(flipsecret_message)
        if mod(n, 2) == 1
            first_half1 = [first_half1 flipsecret_message(n)];
        else
            second_half1 = [second_half1 flipsecret_message(n)];
        end
    end

    counter = counter + 1
    flipsecret_message = [first_half1 second_half1];
    disp(flipsecret_message)
end
decoded_numbers = flipsecret_message;
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
last_message = char(final_numbers)