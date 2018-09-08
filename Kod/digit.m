[A]=tensor(azip, dzip);

D=imread('004.jpg');
D=double(D(:,:,1));
%D=(-D+255)/255;
D=D/norm(D,'fro');


R=zeros(10,1);
Av=zeros(16,16,64,10);
H=zeros(16,16,64);
for i=1:10
  [S,U1,U2,U3] = HOSVD(A(:,:,:,i));
  [~,~,n]=size(S);
  H1=0;
  for j=1:n
    Av(:,:,j,i)=tmul(tmul(S(:,:,j),U1,1),U2,2);
    if (norm(Av(:,:,j,i),'fro')~=0)
      Av(:,:,j,i)=Av(:,:,j,i)/norm(Av(:,:,j,i),'fro');
    end
    H(:,:,j)=D(:,:).*Av(:,:,j,i);
    s=0;
    for k=1:16
      for m=1:16
        s=s+H(k,m,j);
      end
    end
    H1=H1+s*s;
  end
  R(i)=1-H1;
end
[x,ix]=min(R);
ix-1