function [ T_jacobi,  jacobi_iter ] = steady_state_jacobi(error,tol,nx,ny,Told)
  
%creating mesh
x = linspace(0,1,nx);
y = x;
dx = x(2) - x(1);
dy = dx;
T_jacobi = Told ;

%Jacobi method

  jacobi_iter = 1;
  
  k = 2*(dx^2+dy^2)/(dx^2 * dy^2);
 
  %convergence loop
  while(error > tol)
    
    %space loop
      for i = 2:nx-1
       
          for j = 2:ny-1
            
                term1 = (Told(i+1,j) + Told(i-1,j))/(dx^2);
                term2 = (Told(i,j+1) + Told(i,j-1))/(dy^2);
                        
                T_jacobi(i,j) = term1/k + term2/k ; 
                  
          end
        
      end
    
    %calculating error
    error = max(max(abs(Told - T_jacobi)));
    %updating the value
    Told = T_jacobi;
    jacobi_iter = jacobi_iter + 1;
   
    %plotting of results
    figure(1);
    contourf(T_jacobi,20);
    set(gca,'yDIR','reverse');
    colorbar;
    title_text = sprintf('Jacobi iteratons = %d',jacobi_iter);
    title(title_text)
    xlabel('x');
    ylabel('y');
    pause(0.3)
    
  end 
  
end