%Name: Megan Mutsawashe
%Surname: Musanjeya
%Group: Ekfu-25/1
%Date: 09/10/26

clc; clear; close all; format compact;

A = {'Megan', 'Musanjeya', '2006-05-10', '+37060012345', ...
     [8 9 10 7; 9 9 8 10; 7 8 9 9]};

B = {'Marley', 'Musanjeya', '2014-03-20', '+37061198765', ...
     [10 9 9 8; 8 8 9 9; 9 10 10 9]};

disp('Cell A:');
celldisp(A);
disp('Cell B:');
celldisp(B);

C = [A; B];
disp('Combined cell size:');
disp(size(C));

disp('Is text:');
disp(cellfun('isclass', C, 'char'));
disp('Is real:');
disp(cellfun(@isreal, C));
disp('Lengths:');
disp(cellfun(@length, C));
disp('Is empty:');
disp(cellfun(@isempty, C));

avgMarks = cellfun(@(x) mean(x(:)), C(:,5));
fprintf('Average mark of %s: %.2f\n', C{1,1}, avgMarks(1));
fprintf('Average mark of %s: %.2f\n', C{2,1}, avgMarks(2));

allMarks = cell2mat(C(:,5));
fprintf('Average mark of both: %.2f\n', mean(allMarks(:)));

cellplot(C);
title('Combined cell: two persons');
%%

prev = NaN;
stop = false;

while ~stop
    m = input('m = ');

    if m < 0
        f = m^2 + 1;
    elseif m == 0
        f = (m + 1) / 2;
    else
        f = m^2 - 1;
    end

    disp(['f(' num2str(m) ') = ' num2str(f)]);

    if m == prev
        stop = true;
    else
        prev = m;
    end
end

disp('Stopped: same value entered twice in a row.');

%%
a = round(rand*7);
b = round(rand*9);

while a(end) ~= b(end)
    a(end+1) = round(rand*7);
    b(end+1) = round(rand*9);
end

n = length(a);

figure;
plot(1:n, a, '-o', 1:n, b, '-s', 'LineWidth', 1.3);
legend('round(rand*7)', 'round(rand*9)');
xlabel('Iteration');
ylabel('Value');
title(['Stopped after ' num2str(n) ' iterations (equal value = ' num2str(a(end)) ')']);
grid on;