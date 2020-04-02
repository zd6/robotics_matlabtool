function J = forward_j(o,q)
    if size(o)~=size(q)
        error('Input error! check joint specificaions!')
    end
    T = eye(4);
    j_num = size(o);
    theta_num = j_num(1);
    theta_sym = sym('theta_sym', [1,theta_num]);
    assume(theta_sym, 'real')
    J =[];
    for i = 1:theta_num
        s = screw(o(i,:),q(i,:));
        J = [J (adj(T)*s)];
        T = T*expm(screw_matrix(o(i,:),q(i,:))*theta_sym(i));
    end 
end