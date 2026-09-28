% Modestas Jasiunas 8 variantas

%1
%a
x=0:0.1:2*pi;
f_x = x.^3 + tan(x);
figure(1);
grid("on");
axis tight;
plot(x,f_x,'ob');
xlabel("X ašis")
ylabel("Y ašis")


%b
f_x1  = exp(x);
f_x2 = exp(3.*x);
f_x3 = exp(5.*x);
figure(2);
grid("on");
hold on;
plot(x,f_x1,'or');
plot(x,f_x2,'g');
plot(x,f_x3,'b');
xlabel("X ašis")
ylabel("Y ašis")

%axis()


