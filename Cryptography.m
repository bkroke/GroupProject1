img = imread("Cat_Dive.png");
sec_msg = 0;
[coded_img, img] = encode_msg(sec_msg, img);
secret_message = decode_msg(coded_img, img);
function [coded_img, img] = encode_msg(sec_msg, img)
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
disp(new_sec_msg);

flipnew_sec_msg = flip(new_sec_msg)

for ii = 1:2 %runs the scrambler function 2 times
    first_half1 = [];
second_half1 = [];
for n = 1:length(flipnew_sec_msg)
    if mod(n, 2) == 1
        first_half1 = [first_half1 flipnew_sec_msg(n)];
    else
        second_half1 = [second_half1 flipnew_sec_msg(n)];
    end
end
disp(first_half1)
disp(second_half1)
flipnew_sec_msg = [first_half1 second_half1]
end
img = imread("Cat_Dive.png");
coded_img = img;
% trying to change the red channel of img to the value of new_sec_msg (the
% coded value for the letter
for ii = 1:size(flipnew_sec_msg, 2) %when the for row and for col loops are commented out and row and col are changed to ii within the for loop, only the 1st element is changed
    coded_img(1, ii, 1) = flipnew_sec_msg(ii); %new_sec_msg will be changed to the final coded vector
end
subplot(1, 2, 1)
imshow(img)
subplot(1, 2, 2)
imshow(coded_img)


end 
%to extract the code from the image
% 
function secret_message = decode_msg(coded_img, img)
img_output = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                img_output = [img_output coded_img(row, col, 1)];
            end
            secret_message = img_output;
        end
    end

    k = 3;
    for ii = 5:2:size(img_output, 2)
        k = k + 1; 
    end
    

      
end
    %secret_message = flip(unscrambled)

% function secret_message = decode(coded_img) 
%     img_output = coded_img(1, length(new_sec_msg, 1); %new_sec_msg will be changed to the final coded vector 
%     %issue with this as it requires an input from encoding part to work but
%     %this kinda defeats the point of having a section of decode
% 
%     secret_message = img_output;
% end
% %disp(img_output)
