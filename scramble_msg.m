
function [coded_msg] = scramble_msg(initial_msg)
initial_msg = input('What is your secret message? \n', 's');

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
ascii = double(initial_msg); %converts each letter in the string initial_msg to its ASCII code
ascii_msg = []; %this will be populated with the values of initial_msg after being transformed with our key 
for ii = 1:size(ascii, 2)
    if ascii(ii) == 32
        ascii(ii) = 27; %assigns a vallue to 27 to spaces (ascii code 32)
        ascii_msg = [ascii_msg ascii(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code = ascii(ii) - (double('a')-1);
        disp(ascii(ii))
        disp(code)
        ascii_msg = [ascii_msg code];
    end
end
 
if length(ascii_msg) < 12
    disp('not long enough')
    coded_msg = 0;
    return

elseif ascii(1:12) ~= new_key
    disp('incorrect format')
    coded_msg = 0;
    return
end

disp(ascii_msg(14))
coded_msg = flip(ascii_msg); %flips ascii_msg to scramble message more

for ii = 1:2 %runs the scrambler function 2 times
    first_half = [];
    second_half = [];
for n = 1:length(coded_msg)
    if mod(n, 2) == 1
        first_half = [first_half coded_msg(n)]; %takes every other number and creates a new vector with just those values
    else
        second_half = [second_half coded_msg(n)]; %takes the other every other number and creates a new vector with just those values
    end
end

coded_msg = [first_half second_half] %changes coded_msg to the combination of first_half and second_half
end
end
