sec_msg = input('What is your secret message? \n', 's');
% need to convert string to ascii codes and change to our new key
table_char = [];
table_scr = [];
while length(sec_msg) < 1000
    letter = char(randi([141,151]));
sec_msg = [sec_msg letter];
ascii = double(sec_msg); %converts each letter in the string sec_msg to its ASCII code
new_sec_msg = []; %this will be populated with the values of sec_msg after being transformed with our key 
for ii = 1:size(ascii, 2)
    if ascii(ii) == 32
        ascii(ii) = 27; %assigns a vallue to 27 to spaces (ascii code 32)
        new_sec_msg = [new_sec_msg ascii(ii)];
    else
        %creates a vector called new_sec_msg that contains values corresponding
        %to the letter of the string
        %a-z = 0-25
        code = ascii(ii) - (double('a')-1);
        new_sec_msg = [new_sec_msg code];
    end
end
disp(new_sec_msg);

flipnew_sec_msg = flip(new_sec_msg);
test_break = flipnew_sec_msg;
scr_counter = 0;
run_test = true;
while run_test == true
first_half1 = [];
second_half1 = [];
for n = 1:length(flipnew_sec_msg)
    if mod(n, 2) == 1
        first_half1 = [first_half1 flipnew_sec_msg(n)];
    else
        second_half1 = [second_half1 flipnew_sec_msg(n)];
    end
end
disp(first_half1);
disp(second_half1);
flipnew_sec_msg = [first_half1 second_half1];
scr_counter = [scr_counter + 1];
if flipnew_sec_msg == test_break
    run_test = false;
end
end
character_counter = length(flipnew_sec_msg);

table_char(end+1) = [character_counter];
table_scr(end+1) = [scr_counter];

end

tester = table(table_char',table_scr')

scr_max = max(table_scr)


%Hypothetically can make a function that will add a randi (0-9) each time and
%produce a table with scr_counter and character_counter next to each other
%up to a certain length of characters
