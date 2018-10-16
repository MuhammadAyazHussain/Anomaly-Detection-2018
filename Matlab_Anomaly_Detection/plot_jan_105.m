c = jan_16_ol;
st_5_i = find(c(:,3)==105);
st_5 = c(st_5_i,:);
%%
l = 0;
for i = 1:96
    disp(l);
    st_hr_i = find(st_5_w(:,8)==l);
st_hr = st_5_w(st_hr_i,5);
plot(st_hr,'*')
hold on
    l = l+0.25;
    
    

end
grid on

%%
l = 0;
day1=zeros(25,96);
for i = 1:26
    %disp(l);
    %st_hr_i = find(st_5_w(:,8)==l);
    for z = 1:96
st_hr = st_5_w(:,5);
day1{i,z} = st_hr(1*i:96*i);

hold on
    end
    
    

end

mat1 = reshape(st_hr,96,25);
plot(mat1,'*');
grid on
xlabel('Time')
ylabel('Energy Consumption')


f = 4;
xticks([0 1*f 2*f 3*f 4*f 5*f 6*f 7*f 8*f 9*f 10*f 11*f 12*f 13*f 14*f 15*f 16*f 17*f 18*f 19*f 20*f 21*f 22*f 23*f 24*f])
xticklabels({'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','00'})
ylabel('Energy Consumed')
title('Energy Consumption by Store 105 during January with outliers')
xlabel('Hours of the day')
ylim([0 30])
xlim([1 97])

%%
l=0;
aaa=zeros(96,24);
for i = 1:96
    for j = 1:24
    aaa(i) = st_5_gt(find(st_5_gt(:,8)==l*(1-1),5)
    
    
    end
    l = l+0.25;
end


%%

%%
ls1=0;
xx14=zeros(96,24);
for i = 1:96
xx14 = st_5_gt(find(st_5_gt(:,8)==ls1,5));
ls1 = ls1+0.25;

end


%%

lost_ind = find(st_5_w(:,9)==0);

%%