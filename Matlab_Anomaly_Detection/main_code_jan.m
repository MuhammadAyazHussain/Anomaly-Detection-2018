%store_numbers = unique(jan_2016(:,3));
%store_numbers1 = unique(jan_2016(:,4));
flag= exist('jan_2016.mat');
if flag == 1
else
    load('jan_2016.mat');
end



no_of_stores = length(unique(nov_2015(:,10)));
different_hrs = length(unique(jan_2016(:,8)));
jan_work_indices = find(jan_2016(:,7)==0);
jan_w = jan_2016(jan_work_indices,:);
no_of_days = length(jan_w(:,1))/(no_of_stores*different_hrs);
%for jj =96
for ii = 1:no_of_stores
        Energy = jan_w(ii:no_of_stores:end,5);
        Store_ID = jan_w(ii:no_of_stores:end,3);
        struct.store.store_ID{ii} = Store_ID(ii);
        Hours = jan_w(ii:no_of_stores:end,8);
        %Store.ID=jan_2016(ii:238:end,5);
        %Store2.ID=jan_2016(ii:238:end,8);
        %struct.store.energy{ii,1} = Energy;
        %struct.store.hours{ii,1} = Hours;
        for jj = 1:different_hrs
        %struct.store.hours{ii,jj} = Hours(jj:96:end,:);
        struct.store.energy{ii,jj} = Energy(jj:different_hrs:end,:);
        
        struct.store.hours{ii,1} = Hours(ii,:);
        [x,y]=Outlier_function1(Energy(jj:different_hrs:end,:));
        struct.store.majorfence{ii,jj} = x;
        struct.store.minorfence{ii,jj} =y;
            for kk = 1:no_of_days
                %struct.store.hours{ii,jj,kk} = Hours(jj:96:end,:);
                %struct.store.energy{ii,jj,kk} = Energy(jj:96:end,:);
                if struct.store.energy{ii,jj}(kk,1) >= struct.store.minorfence{ii,jj}(1,1) & struct.store.energy{ii,jj}(kk,1) <= struct.store.minorfence{ii,jj}(1,2);
                struct.store.labelOL1{ii,jj}(kk,1) =1; %prev kk was here too
                %struct.store.labelOL{ii,jj,kk}=1;
                %struct.store.energy1{ii,jj,kk} = Energy(jj:96:end,:);
                elseif struct.store.energy{ii,jj}(kk,1) >= struct.store.minorfence{ii,jj}(1,2) && struct.store.energy{ii,jj}(kk,1) <= struct.store.majorfence{ii,jj}(1,2)
                    struct.store.labelOL1{ii,jj}(kk,1) =0;
                elseif struct.store.energy{ii,jj}(kk,1) >= struct.store.majorfence{ii,jj}(1,2)
                    struct.store.labelOL1{ii,jj}(kk,1) =0;
                %elseif struct.store.energy{ii,jj}(kk,1) <= struct.store.minorfence{ii,jj}(1,1) && struct.store.energy{ii,jj}(kk,1) >= struct.store.majorfence{ii,jj}(1,1)
                    %struct.store.labelOL1{ii,jj}(kk,1) =-1; %prev kk was here too
                %elseif struct.store.energy{ii,jj}(kk,1) <= struct.store.majorfence{ii,jj}(1,1)
                    %struct.store.labelOL1{ii,jj}(kk,1) =-10;
                else
                    struct.store.labelOL1{ii,jj}(kk,1) =0;
                %struct.store.labelOL{ii,jj,kk}=0;
                end
            end
        end
        
        
end    
    
    
    
%e