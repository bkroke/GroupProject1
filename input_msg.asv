function [coded_img, img] = input_msg(flipnew_sec_msg, num_char)
img = imread("Cat_Dive.png");
%indicator_value = num_char - not sure if this is needed

coded_img = img;

coded_img(1, 1, 1) = num_char %sets the first pixel to the indicator value to be read by extract_msg

    for ii = 1:size(flipnew_sec_msg, 2) 
        coded_img(2, ii, 1) = flipnew_sec_msg(ii);
    end
subplot(1, 2, 1)
imshow(img)
subplot(1, 2, 2)
imshow(coded_img)
end