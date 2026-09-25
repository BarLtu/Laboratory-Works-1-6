%Modestas Jasiūnas EDIf-25/1 8 variantas

% 1.
a = 5:2:34;
b = exp(a);
c = a./b;
d = c';
disp(d);

% 2.

A = [pi/2, 3*i
    log(2), 2*pi];

B = [exp(A(1,1)), exp(A(1,2))];

C = [A; B];

sumos = sum(C,2);

disp(sumos);

% 3.
t = 0:0.002:1;
sigma = 1.2;
A = 7;
f = 9;
U1 = 4.5;
U2 = 2.5;

s = A * cos(2*pi*f*t);
n = sigma*randn(size(t));
x = s + n;
didesnesuzU1 = x(x > U1);
x_filtruotas = x;
x_filtruotas(abs(x_filtruotas) < U2) = 0;
dydis_nefiltruoto = length(x);
dydis_atrinktu = length(didesnesuzU1);
maks_filtruotos = max(x_filtruotas);
min_filtruotas = min(x_filtruotas);

disp(['a) Atrinktų reikšmių skaičius ( > U1): ', num2str(dydis_atrinktu)]);
disp(['c) Nefiltruoto signalo dydis: ', num2str(dydis_nefiltruoto)]);
disp(['d) Atrinktų reikšmių dydis: ', num2str(dydis_atrinktu)]);
disp(['e) Didžiausia filtruoto signalo reikšmė: ', num2str(maks_filtruotos)]);
disp(['e) Mažiausia filtruoto signalo reikšmė: ', num2str(min_filtruotas)]);

%%
%Papildoma uzduotis
A = zeros(1,10);         
for i = 1:10
    A(i) = input(['Įveskite A(' num2str(i) ') narį: ']);
end

B = [A(end:-1:6), A(1:5)];

disp('vektorius B yra:');
disp(B);