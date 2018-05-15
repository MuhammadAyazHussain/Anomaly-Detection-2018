%isolate each store
stores = data_stores(:,3);
indiv_store = unique(stores);
number_of_stores = length(indiv_store);
working_day_tags = find (data_stores(:,6)==1);
%load data_stores;
a=0;
b=0;
for a = 1:227
    store_105 = data_stores(a:227:end,3);
    store_energy = data_stores(a:227:end,4);
    struct.store.id{a,1} = store_105;
    struct.store.energy{a,1} = store_energy;
end

%%
for a = 1:227
    %store_105 = data_stores(a:227:end,3);
    store_energy2 = working_days(a:227:end,4);
    %struct.store.id{a,1} = store_105;
    store.energy_working{a,1} = store_energy2;
end
%%
%hours_of_day=zeros(24,24);
for c = 1:23
    store.hours{c,1} = find (data_stores(:,2)==c-1);
    
end