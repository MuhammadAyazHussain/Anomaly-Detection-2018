%storesX = zeros(685440,1);
%energyX =zeros(685440,1);
OLX=zeros(114240,1);
a=0;
%b=0;
for n1 = 1:96
    for n2 = 1:25
        for n3 = 1:238
            a=a+1;
            %storesX(a)= vertcat(struct.store.store_ID{n3,n1}(n2));
            %energyX(a)=vertcat(struct.store.energy{n3,n1}(n2));
            OLX(a)= vertcat(struct.store.labelOL1{n3,n1}(n2));
        end
    %fprintf('struct.store.store_ID{%d,1}(%d),',aoi,akx);
    end
end