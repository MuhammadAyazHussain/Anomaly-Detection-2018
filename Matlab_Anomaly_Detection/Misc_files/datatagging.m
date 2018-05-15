data_stores=load('data_stores');
data_stores=data_stores.data_stores ; 
StoresModels=Anamoly_detect_norm_dist(data_stores);%Produces Models for each stores
stores_ids=unique(data_stores(:,3)); %Stores with ids
total_stores=length(stores_ids); %total number of Stores
months=unique(data_stores(:,5)); 
total_months=length(months);

%%
hours_of_day = data_stores(:,2); %loads hours of the year
diff_hrs = unique(hours_of_day); % unique hours are 24
months = data_stores(:,5);
diff_months = unique(months);
aii = length(diff_months);
ajj = length(diff_hrs);
stores = data_stores(:,3);
diff_stores = unique(stores);
akk = length(diff_stores);
a=0;

for ai = 1:aii
    for aj = 1:ajj
        for ak =1:akk
            a = a+1;
        end
    end
    
end
%%
%load all stores 
storessort =0;
for storessort = 1:length(diff_stores)
    store106= data_stores(1:storesort:end);
    %stores.storeNumber{diff_stores} = store105;
end

%%
%select stores
 

