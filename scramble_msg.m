
function [flipnew_sec_msg] = scramble_msg(sec_msg)
sec_msg = input('What is your secret message? \n', 's');
% need to convert string to ascii codes and change to our new key
ascii = double(sec_msg); %converts each letter in the string sec_msg to its ASCII code
new_sec_msg = []; %this will be populated with the values of sec_msg after being transformed with our key 
for ii = 1:size(ascii, 2)
    if ascii(ii) == 32
        ascii(ii) = 27; %assigns a vallue to 27 to spaces (ascii code 32)
        new_sec_msg = [new_sec_msg ascii(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code = ascii(ii) - (double('a')-1);
        new_sec_msg = [new_sec_msg code];
    end
end

flipnew_sec_msg = flip(new_sec_msg) %flips new_sec_msg to scramble message more

for ii = 1:2 %runs the scrambler function 2 times
    first_half = [];
    second_half = [];
for n = 1:length(flipnew_sec_msg)
    if mod(n, 2) == 1
        first_half = [first_half flipnew_sec_msg(n)]; %takes every other number and creates a new vector with just those values
    else
        second_half = [second_half flipnew_sec_msg(n)]; %takes the other every other number and creates a new vector with just those values
    end
end

flipnew_sec_msg = [first_half second_half] %changes flipnew_sec_msg to the combination of first_half and second_half
end
end
