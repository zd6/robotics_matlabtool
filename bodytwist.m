R = inv([-1 0 0; 0 -1 0; 0 0 1]);
p = [-12 0 0];
M = [R p'; 0 0 0 1];
% rot p is pos in frame b, prim p is axis in frame b
p = [-12 2 0; -10 2 0; -8 2 0;-6 2 0; -2 2 0; 1 0 0];
o = [0 0 1; 1 0 0; 0 0 1; 1 0 0;0 0 1;0 0 0];
j_num = length(p);
B = [];
for i = 1:j_num
    B = [B screw(o(i,:), p(i,:))];
end
disp(mat2str(M))
disp(mat2str(B))