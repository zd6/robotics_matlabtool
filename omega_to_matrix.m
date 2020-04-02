function omega = omega_to_matrix(o)
omega = [0 -o(3) o(2); o(3) 0 -o(1); -o(2) o(1) 0];
end