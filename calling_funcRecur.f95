program calling_funcRecur
implicit none

   integer :: i, f, myfactorial
   i = 6
   
   Print *, "The value of factorial 15 is"
   f=myfactorial(i)
   Print *,f
   
end program calling_funcRecur

! computes the factorial of n (n!)      
recursive function myfactorial (n) result (fac)  
! function result     
implicit none     

   ! dummy arguments     
   integer :: fac     
   integer, intent (in) :: n     
   
   select case (n)         
      case (0:1)         
         fac = 1         
      case default    
         fac = n * myfactorial (n-1)  
   end select 
   
end function myfactorial
