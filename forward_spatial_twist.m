q = [0 2 0; 0 4 0; 0 4 2; -1 0 0; -1 0 0];
o = [0 1 0; 0 0 1; -1 0 0; 0 0 0; 0 0 0];
theta = [0.41; 0.59; -0.61; 0.23; -0.76];
thetadot = [0.81; -0.68; 0.85; -0.25; 0.10];

j_num = size(o);
theta_num = j_num(1);
theta_sym = sym('theta_sym', [1,theta_num]);
assume(theta_sym, 'real')
Js = forward_j(o,q);
V01 = double(subs(Js, theta_sym, theta')*thetadot);
disp(mat2str(V01))