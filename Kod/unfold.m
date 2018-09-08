function [A1]=unfold(A, d)
  [l, m, n]=size(A);
  if d==1
    A1=[];
    for j=1:n
    for i=1:m
      A1=[A1, A(:,i,j)];
    end
    end
  end
  if d==2
    A1=[];
    for j=1:n
    for i=1:l
      A1=[A1, A(i,:,j)'];
    end
    end
  end
  if d==3
    A1=[];
    A2=[];
    for k=1:l
    for j=1:m
    for i=1:n
      A2=[A2; A(k,j,i)];
    end
    A1=[A1, A2];
    A2=[];
    end
    end
  end
end