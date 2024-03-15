function secret_message = extract_msg(coded_img, img)
secret_message = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                secret_message = [secret_message coded_img(row, col, 1)];
                
            end
            
        end
    end 
end