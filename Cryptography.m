alphabet = double('abcdefghijklmnopqrstuvwxyz');
reverse = flip(alphabet)
first_half = reverse(reverse>109)
second_half = reverse(reverse<109)
k = 2;
for ii = 1:2:size(first_half, 2)
    
    first_half(ii) = k
    k = k + 2
end
disp(first_half)
% sec_msg = input('What is your secret message? \n', 's');
% % need to convert string to ascii codes and change to our new key
% ascii = double(sec_msg); %converts each letter in the string sec_msg to its ASCII code
% new_sec_msg = []; %this will be populated with the values of sec_msg after being transformed with our key 
% for ii = 1:size(ascii, 2)
%     if ascii(ii) == 32
%         ascii(ii) = 26; %assigns a vallue to 26 to spaces (ascii code 32)
%         new_sec_msg = [new_sec_msg ascii(ii)];
%     else
%         %creates a vector called new_sec_msg that contains values corresponding
%         %to the letter of the string
%         %a-z = 0-25
%         code = ascii(ii) - double('a');
%         new_sec_msg = [new_sec_msg code];
%     end
% 
% end
% disp(new_sec_msg)



