function [ ] = mathHW03( )
%
clear
clc

A = [1 2 3; 2 -3 2; 3 1 -1]

B = [6;14;-2]

%x=A\B


[m , n] = size(A);
[o , p] = size(B);



%%%%%%%% using Gauss Elimination method 

disp('Gauss Elimination method:')

k=1;
j=1;

        for  j=1:n
            
            j;
            k=j+1;
           for i=k:m             
                     
                     smlvalue(j)
                     
                     
                     %%%% calculations of Gauss elimination 
                     if (A(i,j) & A(j,j)>0 || A(i,j) & A(j,j)<0)
                        B(i,1) = (B(i,1)-(A(i,j)/A(j,j))*B(j,1))
                        A(i,:) = (A(i,:)-(A(i,j)/A(j,j))*A(j,:))
                        
                        
                       
                     elseif(A(i,j)<0 & A(j,j)>0 || A(i,j)>0 & A(j,j)<0) 
                        B(i,1) = (B(i,1)+(A(i,j)/A(j,j))*B(j,1))
                        A(i,:) = (A(i,:)+(A(i,j)/A(j,j))*A(j,:))
   
                            
                            
                     elseif  (A(j,j)==0 || A(i,j)==0)
                        
                                         
                     end
           end
   	end
    
        x=zeros(o,1);
       
        for i=1:o
            t=o-(i-1);
           
            x(t) = (B(t,1)-sum(A(t, t:n)*x(t:n)))/(A(t, t))
            
            
        end
    
 function s = smlvalue(j)
        %%%%%%%% finding the minimum element 
        v = abs(A(j+1:m,j));
        [val,idx] = min(v);
        
        v1 = A(j,:);
        v2 = A(idx+j,:);
        
        x1 = B(j,:);
        x2 = B(idx+j,:);
        
        if   abs(A(j,j))==0
            A(idx+j,:) = v1;
            A(j,:) = v2;            
            B(idx+j,:) = x1;
            B(j,:) = x2;
        
        end
 end

%%%%%%%%%%%% cramer's rule
disp('cramers rule:')
A = [1 2 3; 2 -3 2; 3 1 -1]

B = [6;14;-2]


[m , n] = size(A)


for i=1:n
    AA=A;
    AA(:,i) = B
    
    x(i) = det(AA)/det(A)

    
end

end

