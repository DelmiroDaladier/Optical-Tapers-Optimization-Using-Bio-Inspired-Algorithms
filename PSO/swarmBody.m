numParticles = 10;
% initializing Population
particles = initialPopulation(numParticles);
speed=speedGenerator(numParticles);
seasons = 100;
pBest = particles;
pGBest = particles(1,1:8);
% Cognitive Acellerationcle
phi1 = 2.05*rand(1,1);
%Social Acelleration
phi2 = 2.05*rand(1,1);
% inertia
omega = 0.9;
% Particle sight
visual = 6 ; 
% main Loop 
aux = [];
ind = [];
v = [];
for i=1:seasons
    disp('season:');
    disp(i);
    for j=1:numParticles
        disp('Particle:');
        disp(j);
        %localizar melhor posição individual
        if (funcao( particles(j,1:8) ) > funcao(pBest(j,1:8)) )
        
            pBest(j,1:8) = particles(j,1:8);
        
        end    
        %Localizar melhor posição do cardume
        
        for k=1:(numParticles)
          disp(norm(particles(j,1:8) - particles(k,1:8)));
          if(norm(particles(j,1:8) - particles(k,1:8)) < visual)  
              
            if(funcao(particles(k,1:8)) > funcao(pGBest))
            
                pGBest=particles(k,1:8);
            
            end
          end
        end
        
        %Atualizar Velocidade
        speed(j,1:8) = omega.*speed(j,1:8) + phi1.*(pBest(j,1:8) - particles(j,1:8)) + phi2.*(pGBest - particles(j,1:8));
        
        aux = particles(j,1:8) + speed(j,1:8);
        
        if(any(speed(j,1:8) > 2))
            v = speed(j,1:8);
           ind = find(v > 2);
           for q=1:size(ind)
            speed(j,ind(q)) = 2;
           end
        end
        if(any(aux < 0  ))
            speed(j,1:8) = -1.*speed(j,1:8) ;
            particles(j,1:8) = particles(j,1:8); 
         
        else
            if (any(aux > 8))
             speed(j,1:8) = -1.*speed(j,1:8) ;
             particles(j,1:8) = particles(j,1:8);
            else
             particles(j,1:8) = aux; 
            end
        end     
             
         end 
         
end
disp(particles);
