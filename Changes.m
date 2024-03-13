disp(new_sec_msg);
first_half1 = zeros(size(new_sec_msg));
second_half1 = zeros(size(new_sec_msg));
flipnew_sec_msg = flip(new_sec_msg)

for n = 1:2:length(flipnew_sec_msg)
first_half1(n) = flipnew_sec_msg(n);
end

for n = 2:2:length(flipnew_sec_msg)
second_half1(n) = flipnew_sec_msg(n);
end

%for x = 2:2:size(new_sec_msg, 2)
 %  second_half1(x) = new_sec_msg(x);
%end
%round_one = [first_half1 second_half1]
disp(first_half1)
disp(second_half1)
round_one = [first_half1 second_half1]
for round_one(2:2:length(round_one)) = []