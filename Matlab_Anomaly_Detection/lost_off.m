

lost = st_5_off;
lost_ind1=find(lost(:,9)==0);
lost(lost_ind1,5)=-1;

lost_work = st_5_w;
lost_ind2 = find(lost_work(:,9)==0);
lost_work(lost_ind2,5) = -1;

mat0 = reshape(lost_work(:,5),96,25);
    