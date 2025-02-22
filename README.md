# Atractor de Rössler

Este proyecto implementa el sistema dinámico del atractor de Rössler utilizando el método de integración de Runge-Kutta de segundo orden. El atractor de Rössler es un modelo simple de caos que genera un comportamiento complejo en su espacio de fase.

## Descripción del código

Este código resuelve las ecuaciones diferenciales del atractor de Rössler utilizando el método de Runge-Kutta para calcular las derivadas y actualizar los valores de las variables \(x\), \(y\), y \(z\) en cada paso de tiempo.

### Ecuaciones del sistema

El sistema de ecuaciones diferenciales del atractor de Rössler es el siguiente:

- \( \frac{dx}{dt} = -y - z \)
- \( \frac{dy}{dt} = x + a y \)
- \( \frac{dz}{dt} = b + z(x - c) \)

Donde:
- \( a \), \( b \), y \( c \) son parámetros del sistema.
- \( x \), \( y \), y \( z \) son las variables dependientes del tiempo.

### Parámetros de la simulación

- `a = 0.2`: Parámetro del sistema que controla el acoplamiento entre las variables \(x\) y \(y\).
- `b = 0.2`: Parámetro del sistema que afecta la interacción entre \(z\) y el resto de las variables.
- `c = 7.0`: Parámetro del sistema que influye en la dinámica del componente \(z\).

### Condiciones iniciales

El sistema comienza con las siguientes condiciones iniciales:
- \(x_0 = 0\)
- \(y_0 = 0\)
- \(z_0 = 0\)

### Configuración de la simulación

- `t_max = 200`: Tiempo máximo de la simulación (en unidades arbitrarias).
- `dt = 0.01`: Paso de tiempo utilizado para la integración numérica.
- `n = t_max / dt`: Número total de pasos de tiempo para la simulación.

### Método de integración

El código utiliza el método de **Runge-Kutta de segundo orden** para resolver las ecuaciones diferenciales:

1. Calcula las derivadas \(dx1\), \(dy1\), y \(dz1\) en el paso actual.
2. Estima las variables \(x\), \(y\), y \(z\) en el siguiente paso utilizando las derivadas.
3. Calcula las derivadas en el siguiente paso (denominadas \(dx2\), \(dy2\), y \(dz2\)).
4. Actualiza las variables \(x\), \(y\), y \(z\) en el paso actual utilizando el promedio de las derivadas calculadas.

### Resultados

El sistema se simula durante 200 unidades de tiempo, y los resultados se almacenan en tres arreglos: `x`, `y` y `z`. El código luego genera una gráfica 3D del atractor de Rössler, que muestra cómo las variables interactúan a lo largo del tiempo.

### Visualización

El código genera un gráfico 3D con la trayectoria del atractor de Rössler:

```matlab
figure;
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Atractor de Rössler');
grid on;
