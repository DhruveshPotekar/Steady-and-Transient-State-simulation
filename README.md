# Comparing-speed-of-Steady-Vs-Transient-State-simulation
In this problem we have to solve the steady and unsteady state heat conduction equation using both implicit and explicit approach and we have to compare the fastest simulation of both the steady and unsteady state.
The general 2 Dimensional heat conduction equation is `frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

We will solve for two cases-\
1.Transient / Unsteady state equation - Temperature within the system will change with time : 
`frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

2.Steady state equation - Temperature within the system will not change with time : `frac{del^2T}{delx^2} + frac{del^2T}{dely^2}=0`

We assumed a plane wall of 10x10 matrix and specify the temperature values at all the sides of the wall as boundary conditions and calculate the temperature distribution at inner nodes.\
The Boundary conditions for the problem are as follows;\
Top Boundary = 600 K\
Bottom Boundary = 900 K\
Left Boundary = 400 K\
Right Boundary = 800 K

The equation for steady and unsteady state using implicit and explicit approach are given below:

For steady state implicit equation : `T(i,j)=1/k*(frac{Told(i+1,j)+Told(i-1,j)}{dx^2}+frac{Told(i,j+1)+Told(i,j-1)}{dy^2})`
where `k=frac{2(dx^2+dy^2)}{dx^2⋅dy^2}`

For unsteady state explicit equation : `T_{i,j}^{n+1}=T_{i,j}^n+α*δt(frac{T_{i+1,j}^n - 2*T_{i,j}^n + T_{i-1,j}^n}{dx^2} + frac{T_{i,j+1}^n - 2*T_{i,j}^n + T_{i,j-1}^n}{dy^2})`

For unstaedy state implicit equation : `T_{i,j}^{n+1}=frac{T_{i,j}^n + k1(T_{i+1,j}^{n+1} + T_{i-1,j}^{n+1}) + k2(T_{i,j+1}^{n+1} + T_{i,j-1}^{n+1})}{(1+2k1+2k2)}`
where   
`k1=frac{α*dt}{dx^2}`
`k2=frac{α*dt}{dy^2}`         

