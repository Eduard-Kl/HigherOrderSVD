function [A]=tensor(azip, dzip)
  A=zeros(16,16,64,10);
  for i=0:9
    itmp=find(dzip==i);
    [~,d]=size(itmp);
    
    for j=1:64
      a1=squeeze(azip(:,itmp(j)));
      a1=reshape(a1,16,16)';
      
      A(:,:,j,i+1)=a1;
    end
    
  end
end