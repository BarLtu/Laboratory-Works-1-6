%Modestas Jasiūnas 8 variantas
%1.
rows = 5;
cols = 5;
A = rand(rows, cols);
C = num2cell(A);
A2 = cell2mat(C);              
disp(isequal(A, A2))           
C{2,3} = [];
C{1,4} = [];
tusciu_paieska = @(C) cellfun(@isempty, C);
L = tusciu_paieska(C)
D = {C, tusciu_paieska};
L = D{2}(D{1})
E = cell(2, 3)
length(C)
R = cellfun(@isreal, C)
class(D{2})
isa(D{1}, 'cell')
figure; cellplot(C);
%%
%2.
n = input('Įveskite žmogaus amžių: ');

while isempty(n) || n <= 0 || n > 120
    disp('Netinkamas amžius! Amžius turi būti intervale 0 < n <= 120.');
    n = input('Įveskite žmogaus amžių iš naujo: ');
end

if n < 1
    grupe = 1;
elseif n < 13
    grupe = 2;
elseif n < 18
    grupe = 3;
elseif n < 60
    grupe = 4;
else
    grupe = 5;
end

switch grupe
    case 1
        disp('Mažylis');
    case 2
        disp('Vaikas');
    case 3
        disp('Paauglys');
    case 4
        disp('Suaugęs');
    case 5
        disp('Senelis');
end
%%
%Papildoma
x = input('Įveskite x: ');
y = input('Įveskite y: ');

for k = 1:30
    m = randi(x);
    n = randi(y);
    A = ones(x, y);
    A(m, n) = NaN;
    disp(A);
    pause(0.4);
    if k < 30
        clc;
    end
end
