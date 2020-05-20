T = 273+15;
I = 0.5;
n = 1:5000;

load('Battery_1.csv')
load('Battery_2.csv')
load('Battery_3.csv')

%C = (26794.698*exp(0.734/T)-0.155/I-26179.913)*2^(785.46*exp(0.844/T+0.122*I-782.972))

C =0.0165658* I * I *exp(942.7677/T)*n.^(14.2335*I*I*exp(-1059.5988/T));

plot((1-C)*100 + 10)
hold on


C_r = 0.3334*n.^0.6045;
plot((100-C_r))
hold on
plot(100-0.9*C_r);


hold on
plot(Battery_1(:,1),Battery_1(:,2))
hold on
plot(0.9*Battery_1(:,1),Battery_1(:,2))
hold on
plot(Battery_2(:,1),Battery_2(:,2))
hold on
plot(Battery_3(:,1),Battery_3(:,2))

legend('100 DoD IJES model 1','100 DoD IJES 20C','100 DoD IJES 10C','25 DoD 20C','25 DoD 10C','40 DoD 20C','50 DoD 20C');
xlabel('No. of cycles');
ylabel('Battery capacity %');
grid on