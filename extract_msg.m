function extracted_message = extract_msg(coded_img, img)
extracted_message = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                extracted_message = [extracted_message coded_img(row, col, 1)]; 
                %if the red channel of coded_img does not equal the red
                %channel for img for a given element, that value is added
                %to extracted_msg
            end
            
        end
    end 
end