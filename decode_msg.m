%decode the messge
function decoded_numbers = decode_msg(secret_message) 
firsthalf =[];
secondhalf = [];

    for n = 1:length(secret_message)
        if mod(n, 2) == 1
            firsthalf = [firsthalf secret_message(n)];
            
        else
            secondhalf = [secondhalf secret_message(n)];
        end

    end
    disp(firsthalf)
    disp(secondhalf)
    firsthalf2 = [];
    firsthalf3 = [];
    for n = 1:length(firsthalf)
        if mod(n, 2) == 1
            firsthalf2 = [firsthalf2 firsthalf(n)];
        else
            firsthalf3 = [firsthalf3 firsthalf(n)];
        end

    end
    disp(firsthalf2)
    disp(firsthalf3)

    secondhalf2 = [];
    secondhalf3 = [];
    for n = 1:length(secondhalf)
        if mod(n, 2) == 1
            secondhalf2 = [secondhalf2 secondhalf(n)];
        else
            secondhalf3 = [secondhalf3 secondhalf(n)];
        end

    end
    disp(secondhalf2)
    disp(secondhalf3)
    k = 1
    total_length = length(firsthalf) + length(firsthalf2) + length(firsthalf3)
    decoded_numbers = zeros(length(total_length))
    
    while numel(firsthalf) ~= 0 | numel(firsthalf2) ~= 0 | numel(firsthalf3) ~= 0 | numel(secondhalf) ~= 0 | numel(secondhalf2) ~= 0 | numel(secondhalf3) ~= 0
        
      
        decoded_numbers(k) = firsthalf2(1)
        firsthalf2(1) = []
        k = k + 1;
         decoded_numbers(k) = secondhalf2(1)
        secondhalf2(1) = []
        k = k + 1;
        decoded_numbers(k) = firsthalf3(1)
        firsthalf3(1) = []
        k = k + 1;
       
        decoded_numbers(k) = secondhalf3(1)
        secondhalf3(1) = []
        k = k + 1;
    
    end
   flipfinal_numbers = [];
for ii = 1:size(decoded_numbers, 2)
    if decoded_numbers(ii) == 27
        decoded_numbers(ii) = 32; %assigns a vallue to 27 to spaces (ascii code 32)
        flipfinal_numbers = [flipfinal_numbers decoded_numbers(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code1 = decoded_numbers(ii) + (double('a')-1);
        flipfinal_numbers = [flipfinal_numbers code1];
    end
end
final_numbers = flip(flipfinal_numbers)
final_message = char(final_numbers)
disp('decode')
end
