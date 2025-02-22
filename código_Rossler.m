% Inicializar variables
a = 0.2;
b = 0.2;
c = 7.0;

x0 = 0;
y0 = 0;
z0 = 0;

% Intervalos de tiempo y pasos de tiempo
t_max = 200;
dt = 0.01;
n = t_max / dt;  % Número de pasos de tiempo

% Inicializar los arreglos
x = zeros(n, 1);
y = zeros(n, 1);
z = zeros(n, 1);

% Condiciones iniciales
x(1) = x0;
y(1) = y0;
z(1) = z0;

% Ciclo para calcular las derivadas, el siguiente paso y el promedio de las derivadas
for k = 1:n-1
    % Calcular las derivadas en el punto actual
    dx1 = -y(k) - z(k);
    dy1 = x(k) + a * y(k);
    dz1 = b + z(k) * (x(k) - c);

    x_temp = x(k) + dx1 * dt;
    y_temp = y(k) + dy1 * dt;
    z_temp = z(k) + dz1 * dt;

    dx2 = -y_temp - z_temp;
    dy2 = x_temp + a * y_temp;
    dz2 = b + z_temp * (x_temp - c);

    x(k+1) = x(k) + (dx1 + dx2) * dt / 2;
    y(k+1) = y(k) + (dy1 + dy2) * dt / 2;
    z(k+1) = z(k) + (dz1 + dz2) * dt / 2;
end

% Graficar
figure;
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Atractor de Rössler');
grid on;
