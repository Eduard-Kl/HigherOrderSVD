function [S,U1,U2,U3] = HOSVD(T)

[U1,~,~] = svd(unfold(T,1));
[U2,~,~] = svd(unfold(T,2));
[U3,~,~] = svd(unfold(T,3));

S = tmul(tmul(tmul(T,U1',1),U2',2),U3',3);