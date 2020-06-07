function Is = simp(x, W)
    h = W/2;
    Is = (h/3) * ( f(x) + 4*f(x+h) + f(x+2*h));
end