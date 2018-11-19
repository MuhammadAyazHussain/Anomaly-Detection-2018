c = jan_16_ol;
st_5_i = find(c(:,3)==105);
st_5 = c(st_5_i,:);
st_05_off = find(st_5(:,7)==0);
st_5_off = st_5(st_05_off,:);

%%


%%

l = 0;
day1=zeros(25,96);
for i = 1:26
    %disp(l);
    %st_hr_i = find(st_5_w(:,8)==l);
    for z = 1:96
st_hr_off = st_5_off(:,5);
%day1{i,z} = st_hr(1*i:96*i);

hold on
    end
    
    

end
mat0 = reshape(lost_work(:,5),96,25);
mat2 = reshape(lost(:,5),96,6);
plot(mat0,'r*');
%legend('Working Days')
hold on
% ,'DisplayName','sin(0.9x)
plot(mat2,'b*');
%set(h2,{'DisplayName'},{'first';'';'';'';'';''})
% 'DisplayName','Off Days'
%legend('Off Days')
%plot(mat2*0,'b*');
grid on
xlabel('Time')
ylabel('Energy Consumption')
%legend('Working Days','','','','','','','','','','','','','','','','','','','','','','','','','','','','')




f = 4;
xticks([0 1*f 2*f 3*f 4*f 5*f 6*f 7*f 8*f 9*f 10*f 11*f 12*f 13*f 14*f 15*f 16*f 17*f 18*f 19*f 20*f 21*f 22*f 23*f 24*f])
xticklabels({'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','00'})
ylabel('Energy Consumed')
title('Energy Consumption by Store 105 during January with outliers')
xlabel('Hours of the day')
ylim([0 30])
xlim([1 97])


%%
lost = st_5_off;
lost_ind1=find(lost(:,9)==0);
lost(lost_ind1,5)=-1;

lost_work = st_5_w;
lost_ind2 = find(lost_work(:,9)==0);
lost_work(lost_ind2,5) = -1;

mat0 = reshape(lost_work(:,5),96,25);


%%
   