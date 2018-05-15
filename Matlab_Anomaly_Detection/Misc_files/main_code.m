%store_numbers = unique(nov_2015(:,3));
%store_numbers1 = unique(nov_2015(:,4));

%for jj =96
for ii = 1:238
        Energy = nov_2015(ii:238:end,5);
        Store_ID = nov_2015(ii:238:end,3);
        
        Hours = nov_2015(ii:238:end,8);
        %Store.ID=nov_2015(ii:238:end,5);
        %Store2.ID=nov_2015(ii:238:end,8);
        %struct.store.energy{ii,1} = Energy;
        %struct.store.hours{ii,1} = Hours;
        for jj = 1:96
        %struct.store.hours{ii,jj} = Hours(jj:96:end,:);
        struct.store.energy{ii,jj} = Energy(jj:96:end,:);
        struct.store.store_ID{ii,jj} = Store_ID(jj:96:end,:);
        struct.store.hours{ii,jj} = Hours(jj:96:end,:);
        [x,y]=Outlier_function1(Energy(jj:96:end,:));
        struct.store.majorfence{ii,jj} = x;
        struct.store.minorfence{ii,jj} =y;
            for kk = 1:30
                %struct.store.hours{ii,jj,kk} = Hours(jj:96:end,:);
                %struct.store.energy{ii,jj,kk} = Energy(jj:96:end,:);
                if struct.store.energy{ii,jj}(kk,1) >= struct.store.minorfence{ii,jj}(1,1) & struct.store.energy{ii,jj}(kk,1) <= struct.store.minorfence{ii,jj}(1,2);
                struct.store.labelOL1{ii,jj}(kk,1) =1; %prev kk was here too
                %struct.store.labelOL{ii,jj,kk}=1;
                %struct.store.energy1{ii,jj,kk} = Energy(jj:96:end,:);
                else
                struct.store.labelOL1{ii,jj}(kk,1) =0; %prev kk was here too
                %struct.store.labelOL{ii,jj,kk}=0;
                end
            end
        end
        
        
end    
    
    
    
%e