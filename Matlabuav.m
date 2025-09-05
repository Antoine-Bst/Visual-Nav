% Création de données de démonstration
t = linspace(0, 10, 100); % temps
x = sin(t); % fonction x(t)
y = cos(t); % fonction y(t)

% Points de grille 3D
[X, Y, T] = meshgrid(linspace(min(x), max(x), 20), linspace(min(y), max(y), 20), t);

% Interpolation 3D
Z = interp3(X, Y, T, x, y, t, 'spline');

% Affichage des résultats
figure;
scatter3(x, y, t, 'o', 'MarkerFaceColor', 'r');
hold on;
scatter3(X(:), Y(:), T(:), 10, Z(:), 'filled');
colorbar;
xlabel('X');
ylabel('Y');
zlabel('Time (t)');
title('Interpolation 3D');
