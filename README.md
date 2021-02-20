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

**Comparing the three iterative solvers**

<img src="https://user-images.githubusercontent.com/74448981/108591050-ab362480-738c-11eb-9ad9-56e63f853450.JPG" height="400" width="500">

From the above bar graph of steady-state heat conduction, the fastest simulation/lower number of iterations is achieved using successive over relaxation(SOR) iterative solver which used 94 iterations

## **For Unsteady-State**

**By Explicit method**

<img src="https://user-images.githubusercontent.com/74448981/108591866-e5092a00-7390-11eb-9f22-08a3e1a30a1b.JPG" height="300" width="400">

**By Implicit method**

By Jacobi

<img src="https://user-images.githubusercontent.com/74448981/108591869-e63a5700-7390-11eb-9f5f-7af49cafa3d5.JPG" height="300" width="400">

By Gauss seidel

<img src="https://user-images.githubusercontent.com/74448981/108591868-e5a1c080-7390-11eb-8c9b-95ee13a05906.JPG" height="300" width="400">

By Successive over relaxation

<img src="https://user-images.githubusercontent.com/74448981/108591860-e2a6d000-7390-11eb-92c5-f44991b75cf1.JPG" height="300" width="400">

**Comparing explicit and implicit unsteady-states**

<img src="https://user-images.githubusercontent.com/74448981/108591867-e5a1c080-7390-11eb-8958-b3e1f915d1a8.JPG" height="400" width="500">

<img src="https://user-images.githubusercontent.com/74448981/108591861-e3d7fd00-7390-11eb-9e10-2c3390977fcb.JPG" height="400" width="500">

From above two bar graphs of  transient state, we can see that the fastest simulation/low number of iterations is achieved by using explicit approach(no. of iteration =1401) 

## **Conclusion**

Therefore, we conclude that the fastest simulation in steady-state is achieved by successive over relaxation (SOR) method and fastest simulation in transient state is achieved by explicit approach.
