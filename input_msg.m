function [coded_img, img] = input_msg(coded_msg)
img = imread("Cat_Dive.png");
coded_img = img;
    for ii = 1:size(coded_msg, 2) 
        coded_img(1, ii, 1) = (coded_img(1, ii, 1) + coded_msg(ii)); %adds the secret message to the first row with each element in coded_msg being put into the corresponding column of coded_img
    end
subplot(1, 2, 1)
imshow(img)
subplot(1, 2, 2)
imshow(coded_img)
end