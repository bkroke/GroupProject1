function secret_message = extract_msg(coded_img, img)
secret_message = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                secret_message = [secret_message coded_img(row, col, 1)];
                
            end
            
        end
    end 
%num_char2 = secret_message(1); %this will be used to tell the unscrambler how many times to run itself
%secret_message(1) = [];
end