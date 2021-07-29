function g = bi2gray( b )
  % copy the msb:
    g(:,1) = b(:,1);
    
    for i = 2:size(b,2),
        g(:,i) = xor( b(:,i-1), b(:,i) ); 
    end
    
return;