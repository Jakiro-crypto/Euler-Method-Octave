% ----- MÉTODO DE EULER (MODULAR) -----

% ---- Entrada de datos ----
x0 = input('Ingrese el valor inicial del intervalo (x0): ');
xf = input('Ingrese el valor final del intervalo (xf): ');
h  = input('Ingrese el tamaño de paso (h): ');
y0 = input('Ingrese el valor inicial de la función y(x0): ');

func_str = input('Ingrese la función f(x,y): ', 's');
f = str2func(['@(x, y) ' func_str]);

exacta_str = input('Ingrese la función exacta y(x), si la conoce: ', 's');

% ---- Inicialización ----
x = x0:h:xf;
y = zeros(1, length(x));
y(1) = y0;

% ---- Método de Euler ----
for i = 1:length(x)-1
    y(i+1) = y(i) + h * f(x(i), y(i));
end

% ---- Cálculo y Visualización ----
y_exacto = solucion_exacta(exacta_str, x);
errores = calcular_error(y, y_exacto);
mostrar_resultados(x, y, y_exacto, errores);

% ---- Graficar ----
plot(x, y, 'b.-', x, y_exacto, 'r.-')
legend('Euler', 'Exacta')
xlabel('x')
ylabel('y(x)')
title('Comparación entre Método de Euler y Solución Exacta')
grid on



