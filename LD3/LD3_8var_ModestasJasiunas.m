% Modestas Jasiunas 8 variantas

%1
%a
x=0:0.1:2*pi;
f_x = x.^3 + tan(x);
figure(1);
plot(x,f_x,'ob');
grid on;
axis tight;
xlabel("X ašis");
ylabel("Y ašis");
title("f(x) = x^3 + tan(x)");
legend("f(x) = x^3 + tan(x)", 'Location', 'best');


%b
f_x1  = exp(x);
f_x2 = exp(3.*x);
f_x3 = exp(5.*x);
figure(2);
hold on;
plot(x,f_x1,'r');
plot(x,f_x2,'g');
plot(x,f_x3,'b');
grid on;
axis tight;
xlabel("X ašis");
ylabel("Y ašis");
title("Eksponentinės funkcijos");
legend('f(x) = e^x', 'f(x) = e^{3x}', 'f(x) = e^{5x}', 'Location', 'best');
%%
%2

pazymiai = [8 9 10 7
    9 8 5 6
    9 10 5 8
    9 10 9 7
    9 10 6 7
    6 9 8 6];

studentai = {'Jonas', 'Petras', 'Ona', 'Marytė', 'Antanas', 'Ieva'};

% a) Grupuota stulpelinė diagrama
figure(1);
bar(pazymiai);
ylim([0 10]);
set(gca, 'XTickLabel', studentai);     % ← čia įdedame studentų vardus
xlabel('Studentas');
ylabel('P');
title('a)');
legend('1 egz', '2 egz', '3 egz', '4 egz', 'Location', 'best');
grid on;

% b) Sumuota stulpelinė diagrama
figure(2);
bar(pazymiai, 'stacked');
set(gca, 'XTickLabel', studentai);     % ir čia
xlabel('Studentas');
ylabel('P');
title('b)');
legend('1 egz', '2 egz', '3 egz', '4 egz', 'Location', 'best');
grid on;

%%
% Papildoma 
clc; clear; close all;

t = 0:0.002:1;
sigma = 1.2;
A = 7;
f = 9;
U1 = 4.5;
U2 = 2.5;

s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;

x_filtruotas = x;
x_filtruotas(abs(x_filtruotas) < U2) = 0;

idx = x > U1;
t_atrinkti = t(idx);
x_atrinkti = x(idx);

min_reiksme = min(x);
max_reiksme = max(x);
idx_min = find(x == min_reiksme);
idx_max = find(x == max_reiksme);

figure(1);
theme(gcf, 'light');

subplot(2,1,1);
h2 = plot(t, x_filtruotas, '-', 'Color', [0 0.6 0], 'LineWidth', 1.3);
hold on;
h1 = plot(t, x, 'b-.', 'LineWidth', 1.5);
h3 = yline(U1, 'b--', 'LineWidth', 1);
h4 = yline(U2, 'r-', 'LineWidth', 1);
hold off;
grid on;
xlabel('Laikas t, s');
ylabel('Įtampa U, V');
title('Pradinis ir filtruotas signalai');
legend([h1 h2 h3 h4], 'Pradinis signalas', 'Filtruotas signalas', ...
       'Riba U_1', 'Riba U_2', 'Location', 'southwest');
xlim([t(1) t(end)]);
ylim([min(x)-1, max(x)+1]);

subplot(2,1,2);
g1 = stem(t_atrinkti, x_atrinkti, 'b', 'filled', 'MarkerSize', 4);
hold on;
g2 = yline(U1, 'b--', 'LineWidth', 1);
g3 = plot(t(idx_max), x(idx_max), 'r^', 'MarkerSize', 9, 'MarkerFaceColor', 'r');
g4 = plot(t(idx_min), x(idx_min), 'ko', 'MarkerSize', 9, 'LineWidth', 1.5);
hold off;
grid on;
xlabel('Laikas t, s');
ylabel('Įtampa U, V');
title('Pradinio signalo reikšmės, viršijančios U_1 = 4,5 V');
legend([g1 g2 g3 g4], 'Reikšmės > U_1', 'Riba U_1', ...
       'Maksimali reikšmė', 'Minimali reikšmė', 'Location', 'southwest');
xlim([t(1) t(end)]);
ylim([min_reiksme-1, max_reiksme+1]);
