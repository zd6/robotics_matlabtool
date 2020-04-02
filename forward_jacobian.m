q = [4 0 0];
o = [0 0 1];
theta_1 = -0.82;

j_num = size(o);
theta_num = j_num(1);
theta_sym = sym('theta_sym', [1,theta_num]);
assume(theta_sym, 'real')
Js = forward_j(o,q);
Js = double(subs(Js, theta_sym, theta_1));
disp(mat2str(Js))