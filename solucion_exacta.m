function y_exacto = solucion_exacta(f_string, x)
    try
        f = str2func(['@(x) ' f_string]);
        y_exacto = arrayfun(f, x);
    catch
        warning('¡No se pudo evaluar la función exacta! Se devolverán ceros.');
        y_exacto = zeros(1, length(x));
    end
end

