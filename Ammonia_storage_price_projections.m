plot(Ammoniadataset.VarName1,Ammoniadataset.VarName2)

hold on
yline(300, 'r-', 'Ammonia price')
hold on
yline(750, 'g.', 'Electricity price')

text(62.1,932.3,'\leftarrow Middle 2018-2030 projections')

ylabel("Levelised cost of ammonia (GBP/Tonne)");
xlabel("Levelised cost of electricity (GBP/MWh)");

