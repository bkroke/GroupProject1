function last_message = key_decode(secret_message)
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
disp(new_key);
flipnew_key = flip(new_key)
while ~isequal(secret_message(1:12), flipnew_key)
    first_half1 = [];
    second_half1 = [];
    for n = 1:length(secret_message)
        if mod(n, 2) == 1
            first_half1 = [first_half1 secret_message(n)];
        else
            second_half1 = [second_half1 secret_message(n)];
        end
    end
    counter = 1;
    counter = counter + 1
    secret_message = [first_half1 second_half1];
end