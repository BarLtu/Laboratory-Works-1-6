function y = matfunkc(x)
%MATFUNKC Apskaiciuoja matematine funkcija y(x).
%   y = matfunkc(x) grazina:
%       y = -sin(x), kai x < 0
%       y =  sin(x), kai x >= 0
%   x - skaicius, vektorius arba matrica.
%   Pavyzdys: y = matfunkc([-pi/2 0 pi/2])

if nargin < 1
    error('Truksta argumento x');
end

y = zeros(size(x));
for i = 1:numel(x)
    if x(i) < 0
        y(i) = -sin(x(i));
    else
        y(i) = sin(x(i));
    end
end
end
