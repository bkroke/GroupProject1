function extracted_message = extract_msg(coded_img, img)
extracted_message = [];
    for row = 1:size(coded_img, 1)
        for col = 1:size(coded_img, 2)
            if ~isequal(coded_img(row, col, 1), img(row, col, 1))
                % extracted_message = [extracted_message ((coded_img(row, col, 1) - img(row, col, 1)))];
                extracted_message = [extracted_message coded_img(row, col, 1)];
                %if the red channel of coded_img does not equal the red
                %channel for img for a given element, that value is added
                %to extracted_msg
                
            end
            
        end
    end 
    extracted_message = double(extracted_message) 
    orig = double(img(1, 1:length(extracted_message), 1)) %stores the values in the red channel for the original image
    extracted_message = extracted_message - orig %subtracts the values from the original image from the values in extracted_message so values are coded consistently
   
end