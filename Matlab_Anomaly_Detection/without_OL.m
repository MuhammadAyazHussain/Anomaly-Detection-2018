
stx_p = stx(:,5);
mat1 = reshape(stx_p,96,25);
plot(mat1,'*');
grid on
xlabel('Time')
ylabel('Energy Consumption')


f = 4;
xticks([0 1*f 2*f 3*f 4*f 5*f 6*f 7*f 8*f 9*f 10*f 11*f 12*f 13*f 14*f 15*f 16*f 17*f 18*f 19*f 20*f 21*f 22*f 23*f 24*f])
xticklabels({'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','00'})
ylabel('Energy Consumed')
title('Energy Consumption by Store 105 during January without outliers')
xlabel('Hours of the day')
ylim([0 30])
xlim([1 97])