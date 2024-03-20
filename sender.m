%%% KEY %%%
%scramble_msg takes a lower-case message and scrambles it
%input_msg put the scrambled message into the image

%Sender is the main function to call functions that scamble message and put into the image; has the cat
%image stored in it for now

img = imread("Cat_Dive.png");
initial_msg = 0;

img = imread("Cat_Dive.png");
coded_img = img;

[coded_msg] = scramble_msg(initial_msg);
[coded_img, img] = input_msg(coded_msg);
