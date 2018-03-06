% População inicial 100 indivíduos
initial = 10;
population = initialPopulation(initial);
%Número de Gerações
generations = 100;
winners = [];
kids = [];

for i=1:generations
   
    winners = tournament(population,initial);
    disp(winners);
    kids = crossover(winners);
    population = updatePopulation(population,kids);
    disp('Generation');
    disp(i);
end

