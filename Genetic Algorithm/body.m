% Popula��o inicial 100 indiv�duos
initial = 10;
population = initialPopulation(initial);
%N�mero de Gera��es
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

