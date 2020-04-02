q = [-2 0 0; -4 0 2; -4 0 4; 0 1 0];
o = [0 0 1; 0 1 0; 0 0 1;0 0 0];
R = [1 0 0; 0 0 1; 0 -1 0]^-1;
q1 = [-6 0 6];
M = [R q1';0 0 0 1];
theta = [0.11 0.25 -0.06 -0.03];
j_num = size(o);
theta_num = j_num(1);
theta_sym = sym('theta_sym', [1,theta_num]);
assume(theta_sym, 'real')
T01 = forward_k(o,q,M);
T01 = double(subs(T01, theta_sym, theta));
disp(mat2str(T01))