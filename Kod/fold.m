function [A]=fold(A1, d, dim)
  [m, n]=size(A1);
  if d==1
    for i=1:dim
      A(:,:,i)=A1(:, ((i-1)*n/dim+1):(i*n/dim));
    end
  end
  
  if d==2
    for i=1:m
      for j=1:dim
        A(:,i,j)=A1(i, (j-1)*n/dim+1:j*n/dim);
      end
    end
  end
  if d==3
    for i=1:dim
      A(i,:,:)=A1(:, (i-1)*n/dim+1:i*n/dim)';
    end
  end
end