# Comparing-speed-of-Steady-Vs-Transient-State-simulation
We have to compare the fastest simulation of both the steady- and unsteady-state.
The general 2 Dimensional heat conduction equation is `frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

We will solve for two cases-\
1.Transient / Unsteady state equation - Temperature within the system will change with time : 
`frac{delT}{delt}=alpha(frac{del^2T}{delx^2} + frac{del^2T}{dely^2})`

2.Steady state equation - Temperature within the system will not change with time : `frac{del^2T}{delx^2} + frac{del^2T}{dely^2}=0`

We assumed a plane wall of 10x10 matrix and specified the temperature values at all the sides of the wall as boundary conditions and calculated the temperature distribution at inner nodes.\
The Boundary conditions for the problem are as follows;\
Top Boundary = 600 K\
Bottom Boundary = 900 K\
Left Boundary = 400 K\
Right Boundary = 800 K
      
## **For Steady-State**

By Jacobi

<img src="https://user-images.githubusercontent.com/74448981/108591048-aa9d8e00-738c-11eb-8b4a-57342cf84b17.JPG" height="300" width="400">

By Gauss seidel

<img src="https://user-images.githubusercontent.com/74448981/108591046-a96c6100-738c-11eb-8866-65be3ce72d52.JPG" height="300" width="400">

By Successive over relaxation

<img src="https://user-images.githubusercontent.com/74448981/108591049-ab362480-738c-11eb-96fe-ad4853d4c1f7.JPG" height="300" width="400">

Comparing the three

<img src="https://user-images.githubusercontent.com/74448981/108591050-ab362480-738c-11eb-9ad9-56e63f853450.JPG" height="400" width="500">

From the above bar graph of steady-state heat conduction, the fastest simulation/lower number of iterations is achieved using successive over relaxation(SOR) iterative solver which used 94 iterations

## **For Unsteady-State**
