%function [secret_message, last_message] = Receiver(coded_img, img)

secret_message = extract_msg(coded_img, img);
last_message = key_decode(secret_message)

%end