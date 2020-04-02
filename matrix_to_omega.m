function o = matrix_to_omega(omega)
% omega = [0 -o(3) o(2); o(3) 0 -o(1); -o(2) o(1) 0];
o = [omega(3,2);omega(1,3);omega(2,1)];
end