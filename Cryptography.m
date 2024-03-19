%%% KEY %%%
%scramble_msg takes a lower-case message and scrambles it
%TBD will put the scrambled message into the image
%extract_msg will take it out of the image
%decode_msg will decode the message
%TestingUnscrambler is counting how many scrambles can brute force the
%message out - that value is stored in the vector char_scram
%Cryptography is the main function to call everything else; has the cat
%image stored in it for now

img = imread("Cat_Dive.png");
sec_msg = 0;
%[coded_img, img] = encode_msg(sec_msg, img);
%secret_message = decode_msg(coded_img, img);
%function [coded_img, img] = encode_msg(sec_msg, img)

img = imread("Cat_Dive.png");
coded_img = img;

[flipnew_sec_msg, num_char] = scramble_msg(sec_msg);
[coded_img, img] = input_msg(flipnew_sec_msg, num_char);
secret_message = extract_msg(coded_img, img);
last_message = key_decode(secret_message)
%decoded_numbers = decode_msg(secret_message)
% trying to change the red channel of img to the value of new_sec_msg (the
% coded value for the letter
%for ii = 1:size(flipnew_sec_msg, 2) %when the for row and for col loops are commented out and row and col are changed to ii within the for loop, only the 1st element is changed
    %coded_img(1, ii, 1) = flipnew_sec_msg(ii); %new_sec_msg will be changed to the final coded vector
%end
%subplot(1, 2, 1)
%imshow(img)
%subplot(1, 2, 2)
%imshow(coded_img)


%end