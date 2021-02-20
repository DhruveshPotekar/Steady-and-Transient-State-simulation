clear all
close all 
clc 

%solving a 2D steady state heat conduction equation
%d^2(T)/dx^2 + d^2(T)/dy^2 = 0

%number of grid points
nx = 10;
ny = 10;

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



%initializing a variable
error = 9e9;
tol = 1e-4;

%function calling
tic;
[Temperature, jacobi_iteration] = steady_state_jacobi(error,tol,nx,ny,Told);
time1 = toc ;

tic;
[Temperature, gs_iteration] = steady_state_gs(error,tol,nx,ny,Told);
time2 = toc;

tic;
[Temperature, sor_iteration] = steady_state_SOR(error,tol,nx,ny,Told);
time3 = toc;

%plotting of results
figure(8)
x = [1 2 3];
y = [jacobi_iteration gs_iteration sor_iteration];
bar(x,y,0.2,'y');
xticklabels({'Jacobi' ,'Gauss Seidel' ,'SOR'});
xlabel({'Iterative Solver'},'FontSize',16);
ylabel({'No. of iterations'},'FontSize',16);