%Name: Megan Mutsawashe
%Surname: Musanjeya
%Date: 2025/09/25
%Group:Ekfu-25/1

%Paprastas skriptas

x = linspace(-pi, pi, 70);

f1 = cos(x);
f2 = -x.^2 + 5;
f3 = x.^3 - 2*x.^2 - 5;

figure(1);
plot(x, f1, 'b-', 'LineWidth', 1.5);
title('Plot of f_1(x) = cos(x)');
xlabel('x');
ylabel('f_1(x)');
grid on;
axis([-pi, pi, min(f1)-0.5, max(f1)+0.5]);

figure(2);
plot(x, f2, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 4);
hold on;
plot(x, f3, 'b--s', 'LineWidth', 1.5, 'MarkerSize', 4);
hold off;

title('Plots of f_2(x) and f_3(x)');
xlabel('x');
ylabel('f(x)');
grid on;
legend('f_2(x) = -x^2 + 5', 'f_3(x) = x^3 - 2x^2 - 5', 'Location', 'best');
axis([-pi, pi, min(f3)-5, max(f2)+5]);


marks = randi([1, 10], 8, 5);

student_names = {'V. A.', 'A. G.', 'M. M.', 'A. T.', 'A. A.', 'J. S.', 'M. K.', 'P. L.'};

figure(3);

subplot(2, 1, 1);
bar(marks'); % Transpose so grouping is by lab session (1 to 5)
title('a) Results of Laboratory Sessions');
xlabel('Lab Session');
ylabel('Marks');
grid on;
ylim([0, 10]);
legend(student_names, 'Location', 'northeastoutside');

subplot(2, 1, 2);
student_averages = mean(marks, 2); % Row-wise mean (average mark per student)

stem(1:8, student_averages, 'filled', 'LineWidth', 1.5);
title('b) Average Mark of Each Student');
xlabel('Student ID');
ylabel('Average Mark');
grid on;
xlim([0, 9]);
ylim([0, 10]);


%complementary
A = 4;          
f = 3;          
sigma = 1;      
U1 = 2.5;       
U2 = 1.5;      
t = 0:0.001:1;  

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t); 
n = sigma * randn(size(t));               
s_noisy = s + n;                        

s_filtered = s_noisy;                     
s_filtered(abs(s_filtered) < U2) = 0;

figure('Name', 'Complementary Task - Signal Representation');

subplot(1, 2, 1);
p1 = plot(t, s_noisy, 'b-', 'LineWidth', 1.2); 
hold on;
p2 = plot(t, s_filtered, 'g:', 'LineWidth', 1.5);
p3 = yline(U1, 'k-.', 'U_1 = 2.5V', 'LineWidth', 1.2);
p4 = yline(U2, 'r--', 'U_2 = 1.5V', 'LineWidth', 1.2);
hold off;

title('Original and Filtered Signals');
xlabel('Time, t (s)', 'FontWeight', 'bold', 'FontSize', 13); 
ylabel('Voltage, U (V)', 'FontWeight', 'bold', 'FontSize', 13); 
grid on;
legend([p1, p2, p3, p4], {'Original Signal', 'Filtered Signal', 'Threshold U_1', 'Threshold U_2'}, 'Location', 'best');

subplot(1, 2, 2);
idx_exceed = s_noisy > U1;
t_exceed = t(idx_exceed);
s_exceed = s_noisy(idx_exceed);

stem(t_exceed, s_exceed, 'b', 'MarkerSize', 3, 'LineWidth', 1);
hold on;

[max_val, max_idx] = max(s_noisy);
[min_val, min_idx] = min(s_noisy);

stem(t(min_idx), min_val, 'b', 'MarkerSize', 3, 'LineWidth', 1);

p_max = plot(t(max_idx), max_val, 'ro', 'MarkerSize', 9, 'MarkerFaceColor', 'r');
p_min = plot(t(min_idx), min_val, 'go', 'MarkerSize', 9, 'MarkerFaceColor', 'g');
hold off;

title('Original Signal Exceeding U_1');
xlabel('Time, t (s)', 'FontWeight', 'bold', 'FontSize', 13); 
ylabel('Voltage, U (V)', 'FontWeight', 'bold', 'FontSize', 13); 
grid on;
legend([p_max, p_min], {'Maximum Voltage', 'Minimum Voltage'}, 'Location', 'southeast');
axis([0, 1, min(s_noisy)-1, max(s_noisy)+1]);