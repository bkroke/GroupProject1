function [secret_message, last_message] = Receiver(extract_msg, key_decode)

secret_message = extract_msg(coded_img, img);
last_message = key_decode(secret_message)

end