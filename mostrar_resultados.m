function mostrar_resultados(x, y_aprox, y_exacto, errores)
    fprintf('\n%-10s %-15s %-15s %-15s\n', 'x', 'Euler y(x)', 'Exacta y(x)', 'Error abs');
    fprintf('---------------------------------------------------------------\n');
    for i = 1:length(x)
        fprintf('%-10.4f %-15.8f %-15.8f %-15.8f\n', x(i), y_aprox(i), y_exacto(i), errores(i));
    end
end

