% sec_msg = input('What is your secret message? \n', 's');
% % need to convert string to ascii codes and change to our new key
% ascii = double(sec_msg); %converts each letter in the string sec_msg to its ASCII code
% new_sec_msg = []; %this will be populated with the values of sec_msg after being transformed with our key 
% for ii = 1:size(ascii, 2)
%     if ascii(ii) == 32 %ascii code for space
%         ascii(ii) = 26; %assigns a value to 26 to spaces (ascii coe 32)
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
% disp(new_sec_msg);


%reverse the list, then split in half, and reassign first half to even
%numbers, second half to odd numbers, then split in half, and reassign
%first half to even numbers, second half to odd numbers

%new_sec_msg(ii) = flip(new_sec_msg(ii))
%for ii = (0:2:size(new_sec_msg))
%vector_2 = new_sec_msg(new_sec_msg > 13)
%end
%for ii = (1:2:size(new_sec_msg))
  %  new_sec_msg(ii) = new_sec_msg(ii) - 1



