%function [secret_message, last_message] = Receiver(coded_img, img)

extracted_message = extract_msg(coded_img, img);
last_message = key_decode(extracted_message)

%end