program mainprog  
implicit none 

   real :: a, b, p
   a = 2.0
   b = 3.0
   
   Print *, "Before calling swap"
   Print *, "a = ", a
   Print *, "b = ", b
   call produit(a,b,p)
   Print *,'produit :', p
   call swap(a, b)
   
   Print *, "After calling swap"
   Print *, "a = ", a
   Print *, "b = ", b
   call produit(a,b,p)
   Print *,'produit :', p
 
contains   
   subroutine swap(x, y)
      implicit none      
      real :: x, y, temp      
      temp = x 
      x = y  
      y = temp   
   end subroutine swap
  ! product
   subroutine produit(x, y,p) 
      implicit none  
      real :: x
      real:: y
      real:: p    
      p=x*y
   end subroutine produit
   
end program mainprog   
