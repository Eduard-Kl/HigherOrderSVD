function [T1] = tmul(T, M, d)
    [l, m, n]=size(T);
    [j,k]=size(M);
    if d==1
      T1=fold(M*unfold(T, 1), 1, n);
    end
    if d==2
      T1=fold(M*unfold(T, 2), 2, n);
    end
    if d==3
      T1=fold(M*unfold(T, 3), 3, 16);
    end
end