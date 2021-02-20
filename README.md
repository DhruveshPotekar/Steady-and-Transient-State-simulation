# Comparing-speed-of-Steady-Vs-Transient-State-simulation
In this problem we have to solve the steady and unsteady state heat conduction equation using both implicit and explicit approach and we have to compare the fastest simulation of both the steady and unsteady state.
The general 2 Dimensional heat conduction equation is `frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

We will solve for two cases-\
1.Transient / Unsteady state equation - Temperature within the system will change with time : 
`frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

2.Steady state equation - Temperature within the system will not change with time : `frac{del^2T}{delx^2} + frac{del^2T}{dely^2}=0`

We assumed a plane wall of 10x10 matrix and specify the temperature values at all the sides of the wall as boundary conditions and calculate the temperature distribution at inner nodes.
The Boundary conditions for the problem are as follows;\
Top Boundary = 600 K\
Bottom Boundary = 900 K\
Left Boundary = 400 K\
Right Boundary = 800 K
