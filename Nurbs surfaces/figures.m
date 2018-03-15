function [X,Y,Z, poids] = figures(num)
    switch(num)
        case 1
            % Exemple de base : Grille
            [X,Y] = meshgrid(0:0.25:1,0:0.25:1);
            Z=exp(-((X-1/2).^2+(Y-1/2).^2));
        case 2
            % Tore 1
            X = [0 1/4 1/2 1/4; 
                 1/2*ones(1,4); 
                 1 3/4 1/2 3/4; 
                 1/2*ones(1,4)];
            Y = [1/2*ones(1,4); 
                 0 1/4 1/2 1/4; 
                 1/2*ones(1,4); 
                 1 3/4 1/2 3/4];
            Z = repmat([1/2 1 1/2 0],4,1);
        case 3
            % Tore 2
            X = meshgrid(0:4,0:5)
            Z = [2 1 1 1 2;
                 2 2 2 2 2;
                 2 3 3 3 2;
                 2 3 3 3 2;
                 2 2 2 2 2;
                 2 1 1 1 2];
            Y = [2 3 3 3 2;
                 2 4 4 4 2;
                 2 3 3 3 2;
                 2 1 1 1 2;
                 2 0 0 0 2;
                 2 1 1 1 2];
        case 4
            % surfaces avec des bosses
            [X,Y] = meshgrid(0:6,0:6);
            Z = [0 0 0   0 0   0  0;
                 0 1 0.5 0 0.5 0  0;
                 0 1 0   1 1   0  0; 
                 0 3 4   3 3   4  0; 
                 0 3 4   3 3   4  0;
                 0 2 0   2 2   0  0;
                 0 0 0   0 0   0  0];
        case 5
            % Vaisseau TIE Fighter
            X = meshgrid(0:9,0:4);
            Y = [0 2.3 2.3 2.3 2 2 2.3 2.3 2.3 0;
                 0 2.3 2.3 2.3 2 2 2.3 2.3 2.3 0;
                 5 2.7 2.7 2.7 3 3 2.7 2.7 2.7 5;
                 5 2.7 2.7 2.7 3 3 2.7 2.7 2.7 5;
                 0 2.3 2.3 2.3 2 2 2.3 2.3 2.3 0];
            Z = [0 1.8 1.8 1.8 1.5 1.5 1.8 1.8 1.8 0;
                 4 2.2 2.2 2.2 2.5 2.5 2.2 2.2 2.2 4;
                 4 2.2 2.2 2.2 2.5 2.5 2.2 2.2 2.2 4;
                 0 1.8 1.8 1.8 1.5 1.5 1.8 1.8 1.8 0;
                 0 1.8 1.8 1.8 1.5 1.5 1.8 1.8 1.8 0];
        case 6
            % Surface simple unimodale
            [X,Y] = meshgrid(0:0.5:1,0:0.5:1)
            Z=exp(-((X-1/2).^2+(Y-1/2).^2))
        case 7
            % Surface du polygone de controle 1 des courbes.
            X = meshgrid(0:5,0:6);
            Z = [0    0    0    0    0   0;
                 0    0    0    0    0   0;
                 1    1    1    1    1   1; 
                 1    1    1    1    1   1; 
                 0    0    0    0    0   0; 
                 -1   -1   -1   -1   -1 -1; 
                 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5];
             Y = [0    0    0    0    0   0;
                  1    1    1    1    1   1;
                  1    1    1    1    1   1; 
                  2    2    2    2    2   2; 
                  3    3    3    3    3   3; 
                  2    2    2    2    2   2; 
                  1    1    1    1    1   1];   
        case 8
            % Figure précédente modifié.
            X = meshgrid(0:6,0:6);
            Z = [0    1    0    1    0   1    0;
                 0    1    0    1    0   1    0;
                 1    2    1    2    1   2    1; 
                 1    2    1    2    1   2    1; 
                 0    0    0    0    0   0    0; 
                 -1   -2   -1  -2   -1   -2  -1; 
                 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5];
             Y = [0    0    0    0    0   0   0;
                  1    1    1    1    1   1   1;
                  1    1    1    1    1   1   1; 
                  2    2    2    2    2   2   2; 
                  3    2.5    3    2.5    3   2.5   3; 
                  2    2    2    2    2   2   2; 
                  1    1    1    1    1   1   1];
        case 9
            % Visage.
            X = meshgrid(0:16,0:16);
            Y = [5, 4, 3.5, 3.5, 3.5, 3.5, 3.5, 4, 5, 6, 6.5, 6.5, 6.5, 6.5, 6.5, 6, 5;
                 5, 4, 3.5, 3.5, 3.5, 3.5, 3.5, 4, 5, 6, 6.5, 6.5, 6.5, 6.5, 6.5, 6,5 ;
                 5, 4, 3.2, 3.2, 3.2, 3.2, 3.2, 4, 5, 6, 6.7, 6.7, 6.7, 6.7, 6.7, 6,5;
                 5, 4, 3, 3, 3, 3, 3, 4, 5, 6, 6.9, 6.9, 6.9, 6.9, 6.9, 6,5;
                 5, 4, 3, 2.8, 2.8, 2.8, 3, 4, 5, 6, 7, 7.1, 7.1, 7.1, 7, 6,5; % 5
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5;
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5;
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5;
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5;
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5; % 10
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5; 
                 
                 5, 4, 3, 2.7, 2.7, 2.7, 3, 4, 5, 6, 7.2, 7.2, 7.2, 7.2, 7.2, 6,5;
                
                 
                 5, 4, 3, 2.8, 2.8, 2.8, 3, 4, 5, 6, 7, 7.2, 7.2, 7.2, 7, 6,5;
                 5, 4, 3, 3, 3, 3, 3, 4, 5, 6, 7, 7, 7, 7, 7, 6,5;
                 5, 4, 3.4, 3.2, 3.2, 3.2, 3.4, 4, 5, 6, 6.6, 6.8, 6.8, 6.8, 6.6, 6,5; % 15
                 5, 4.5, 4, 3.5, 3.5, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 6.5, 6.5, 6, 5.5,5;
                 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,5]';
            Z = [4.2, 4, 4, 4,            4, 5, 6, 6.3, 6.4,   6.3, 6, 5,    4, 4, 4, 4,4.2; % Bas
                 4.2, 4, 4, 4,            4, 5, 6, 6.3, 6.4,   6.3, 6, 5,    4, 4, 4, 4,4.2;
                 3.7, 3.5, 3.5,         4, 4, 5, 6, 6, 6.1,  6, 6, 5,    4, 4, 3.5, 3.5,3.7;
                 3.2, 3, 3, 3,            4, 5, 6, 6.03, 6.13,  6.03, 6, 5,    4, 3, 3, 3,3.2;
                 0.33, 1, 2, 3,         4, 5, 6, 6.08, 6.18,   6.08, 6, 5,    4, 3, 2, 1,0.33;
                 0.35, 1, 2, 3,         4, 5, 6, 6.1, 6.2,    6.1, 6, 5,    4, 3, 2, 1,0.35; % 5
                 3, 1, 2, 3,          4, 5, 6, 6.2, 6.3,    6.2, 6, 5,    4, 3, 2, 1,3;
                 0.35, 1, 2, 3,         4, 5, 6, 6.3, 6.4,    6.3, 6, 5,    4, 3, 2, 1,0.35;
                 0.6, 0.8, 2, 3,        4, 5, 6, 6.5, 6.6,    6.5, 6, 5,    4, 3, 2, 0.8,0.6;
                 -2, 0.9, 1.1, 2,       4, 5, 6, 6.6, 6.7,    6.6, 6, 5,    4, 2, 1.1, 0.9,-2;
                 
                 
                 0.6, 0.6, 1.1, 2,      4, 5, 6, 6.6, 6.7,    6.6, 6, 5,    4, 2, 1.1, 0.6,0.6; % 10
                 
                 
                 0.65, 2.5, 1, 2.2,     4, 5, 6, 6.6, 6.7,    6.6, 6, 5,    4, 2.2, 1, 2.5,0.65; % yeux
                 
                 
                 0.6, 0.7, 1.5, 2.4,      4, 5, 6, 6.6, 6.7,    6.6, 6, 5,    4, 2.4, 1.5, 0.7,0.6;
                 0.75, 1, 2, 3,          4, 5, 6, 6.6, 6.6,     6.6, 6, 5,    4, 3, 2, 1,0.75;
                 1.3, 1.3, 2, 3,        4, 5, 6, 6.4, 6.4,      6.4, 6, 5,    4, 3, 2, 1.3,1.3;
                 2, 2, 2.5, 3,          4, 5, 5.5, 6, 6,        6, 5.5, 5,  4, 3, 2.5, 2,2;
                 
                 4, 4, 4, 4,            4, 4, 4, 4, 4,      4, 4, 4,    4, 4, 4, 4,4]'; % 15 haut
             Z = -Z;
    end
    
    poids = ones(size(X, 1), size(Y, 2));
    
    %% Affichage
    figure(1)
    surf([X; X(1,:)],[Y; Y(1,:)],[Z; Z(1,:)],'FaceColor','interp') % permet de visualiser la grille de points 3D
    title('Figure choisie');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    hold on;
    plot3(X, Y, Z, '*r-');
end
