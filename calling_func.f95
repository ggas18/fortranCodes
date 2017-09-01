program calling_func

   real :: r,a
   r=  2.0
   a= area_of_circle(r) 
   
   Print *, "The area of a circle with radius 2.0 is"
   Print *, a
   
end program calling_func


! this function computes the area of a circle with radius r  
function area_of_circle (r) result(area)  

! function result     
implicit none      

   ! dummy arguments        
   ! real :: area_of_circle NO ALLOWED WHEN USING[ result( return_var_name)]
   real::area
   
   ! local variables 
   real, intent(in):: r
  ! intent not mandatory here but it's a good habit.   
   real :: pi
   
   pi = 4 * atan (1.0)     
   area = pi * r**2  
   
end function area_of_circle
