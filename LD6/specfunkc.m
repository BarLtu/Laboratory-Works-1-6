function varargout = specfunkc(varargin)
if nargin == 1
    rez = varargin{1}.^3;
elseif nargin == 2
    a = varargin{1}.^2;
    b = varargin{2}.^3;
    rez = a.*b;
else
    error('Funkcijai reikia 1 arba 2 argumentu');
end
if nargout > 1
    error('Funkcija grazina tik viena kintamaji');
end
varargout{1} = rez;
end