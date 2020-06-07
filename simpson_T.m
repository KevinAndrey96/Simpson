function ITs = simpson_T(xi, xf, M)
    clc
    format long
    W = (xf-xi) / M;
    x = xi;
    suma = 0;
    for i = 1:1:M
        termino_siguiente = simp(x, W);
        suma = suma + termino_siguiente;
        x = x+W;
    end
    ITs = suma;
    I_calculada = suma;
    I_real =(xf^5.5-xi^5.5)/5.5;
    error_abs = I_real - I_calculada;
    error_rel = error_abs / I_calculada; 
    fprintf('\tI calc\t\t\tI_real\t\t\terr abs\t\t\terr rel  \n');
    fprintf('\t%23.15e\t%23.15f\t%13.2e\t%13.2e', I_calculada, I_real, error_abs, error_rel);
    
end