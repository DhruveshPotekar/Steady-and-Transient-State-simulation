function [ T_SOR,  sor_iter] = steady_state_SOR(error,tol,nx,ny,Told)
  
%creating mesh
x = linspace(0,1,nx);
y = x;
dx = x(2) - x(1);
dy = dx;
T_SOR = Told ;
T_gs = Told ;

alpha = 1.2;

%successive over relaxation method

  k = 2*(dx^2+dy^2)/(dx^2 * dy^2);
  
  sor_iter = 1;
  
  %convergence loop
  while(error > tol)
    
      %space loop
      for i = 2:nx-1
       
          for j = 2:ny-1
             
                 term5 = (Told(i+1,j) + T_gs(i-1,j))/(dx^2);
                 term6 = (Told(i,j+1) + T_gs(i,j-1))/(dy^2);
                 
                 
                 T_gs(i,j) = term5/k + term6/k ;
                 
                 T_SOR(i,j) = Told(i,j)*(1-alpha) + alpha*(T_gs(i,j));
                  
          end
        
      end
    
    %calculating error values
    error = max(max(abs(Told - T_SOR)));
    %updating values
    Told = T_SOR;
    sor_iter = sor_iter + 1;
    
    %plotting the results
    figure(3);
    contourf(T_SOR,20);
    set(gca,'yDIR','reverse');
    colorbar;
    title_text = sprintf('SOR iteratons = %d',sor_iter);
    title(title_text)
    xlabel('x');
    ylabel('y');
    pause(0.3)
    
  end 
   


end