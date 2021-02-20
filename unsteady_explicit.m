clear all
close all 
clc 

%solving a 2D steady state heat conduction equation
%d^2(T)/dx^2 + d^2(T)/dy^2 = 0

%number of grid points
nx = 10;
ny = 10;

%creating mesh
x = linspace(0,1,nx);
y = x ;
dx = x(2) - x(1) ;
dy = dx ;
alpha = 1.4 ;
dt = 1e-4 ;

%assigning BCs
T = 300*ones(10,10);
T(1,:) = 600;
T(end,:) = 900;
T(:,1) = 400;
T(:,end) = 800;
T(1,1) = 500;
T(1,end) = 700;
T(end,1) = 650;
T(end,end) = 850;
Told = T;

%number of time steps
nt = 1400;

%calculating constants
k1 = (alpha*dt)/dx^2 ;
k2 = (alpha*dt)/dy^2 ;

%time loop
  tic;
  iter = 1 ;
  for k = 1:nt
  
    %space loop
     for i = 2:nx-1
       
       
          for j = 2:ny-1
    
               T(i,j) = Told(i,j) + k1*(Told(i+1,j) - 2*Told(i,j) + Told(i-1,j)) + k2*(Told(i,j+1) - 2*Told(i,j) + Told(i,j-1));

          end
        
        
     end
  
    %updating the velocity
    Told = T;
    iter = iter + 1 ;
    
    %plotting the results
    figure(1);
    contourf(T,20);
    colorbar;
    set(gca,'yDIR','reverse');
    title_text = sprintf('Transient heat conduction using explicit equation=%d',iter);
    title(title_text)
    xlabel('x');
    ylabel('y');
    pause(0.3)
    
  
  end
  time = toc ;
  
  %plotting of results
  figure(2);
  x = [1];
  y = [iter];
  bar(x,y,0.1,'b');
  xticklabels({'Explicit approach'});
  xlabel('Transient explicit equation');
  ylabel('No. of iterations');