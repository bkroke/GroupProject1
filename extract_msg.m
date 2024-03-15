function secret_message = extract_msg(coded_img, img)
img_output = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                img_output = [img_output coded_img(row, col, 1)];
            end
            secret_message = img_output;
        end
    end 
end