% Name: Megan
% Surname: Musanjeya
% Group: Ekfu25/1
% Date: 2026/09/18

% Paprastas skriptas

v1 = 200:-10:10
v2 = log10(v1)
v3 = 10.^v2
v4 = v3 - v1


A = [ pi/2,      3*i,    exp(pi);
      log2(2),   2*pi,   log10(1);
      log(exp(1)), pi^pi, cos(pi) ];

A(:, 2) = rand(3, 1)
column_sums = sum(A)


A = 4;          
f = 3;          
sigma = 1;      
U1 = 2.5;       
U2 = 1.5;      

t = 0:0.001:1;  

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t); 
n = sigma * randn(size(t));               

s_noisy = s + n;                        

selected_samples = s_noisy(s_noisy > U1)

s_filtered = s_noisy;                     
s_filtered(abs(s_filtered) < U2) = 0      

num_total_samples = numel(s_noisy)        

num_selected_samples = numel(selected_samples)

min_val = min(s_filtered)                 
max_val = max(s_filtered)


A = [ 0 1 0 2 3 0 4;
      0 0 0 0 0 0 0;
      0 5 0 6 7 0 8;
      0 9 0 1 2 0 3;
      0 0 0 0 0 0 0;
      0 4 0 5 6 0 7 ]; 


keep_rows = any(A ~= 0, 2);
keep_cols = any(A ~= 0, 1);
B = A(keep_rows, keep_cols)

