function [ ] = mathHW04( )
%
clear
clc


A = [1 -1 2 -2
    -1 1 -1 -1
     2 4 -1 1
     4 2 1 3]
 
 
%%%%%%%% Rank
R = rank(A)


[m , n] = size(A)


k=1;
j=1;

%%%%%%%% using Gauss Elimination method for 
%%%%%%%% finding independent column vectors 


        for  j=1:n
            
            
            k=j+1;
           for i=k:m             
                    
                         
                     
                     
                     smlvalue(j)
                     
                     
                     %%%% calculations of Gauss elimination 
                     if A(i,j) & A(j,j)>0 || A(i,j) & A(j,j)<0
                        A(i,:) = (A(i,:)-(A(i,j)/A(j,j))*A(j,:))
                     else if A(i,j)<0 & A(j,j)>0 || A(i,j)>0 & A(j,j)<0 
                        A(i,:) = (A(i,:)+(A(i,j)/A(j,j))*A(j,:))
                         else if  A(j,j)==0 || A(i,j)==0
                             
                             end
                         end
                     end
                    
           end
           
        end
        
idpvectors
   

 function s = smlvalue(j)
        %%%%%%%% finding the minimum element 
        v = abs(A(j+1:m,j));
        [val,idx] = min(v);
        v1 = A(j,:);
        v2 = A(idx+j,:);
        if  abs(A(j,j))==0
            A(idx+j,:) = v1;
            A(j,:) = v2;
        
        
        end
 end


    function h = idpvectors()
        
        
           
            for i=1:m
                if A(i ,i) == 0 
                    idpv = A(1:(i-1),1:(i-1))
                    break; 
                end
                
            end
            
        

        
        
    end

        
end


