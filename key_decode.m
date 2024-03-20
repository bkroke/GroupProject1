function last_message = key_decode(extracted_message)

    key = 'good morning';
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




while ~isequal(flip(extracted_message(end-11:end)), new_key)
    
    first_half = [];
    second_half = [];
    for n = 1:length(extracted_message)
        if mod(n, 2) == 1
            first_half = [first_half extracted_message(n)];
        else
            second_half = [second_half extracted_message(n)];
        end
    end
%while the last 12 numbers (length(key)) are not equal to the new_key, the
%scrambler will run in the same fasion as is the function scramble_msg
    extracted_message = [first_half second_half];
   
end
decoded_numbers = extracted_message;
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
final_numbers = flip(flipfinal_numbers);
last_message = char(final_numbers); %changes the ascii codes for the numbers back to characters