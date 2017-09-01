program dataStatement
implicit none

   integer :: a(5), b(3,3), c(10),i, j
   data a /7,8,9,10,11/ 
   
   data b(1,1:2) /1,1/ 
   data b(2,2:3)/2,2/ 
   data b(3,1:2)/3,3/ 
   data (c(i),i=1,10,2) /4,5,6,7,8/ 
   data (c(i),i=2,10,2)/5*5/
   
   Print *, 'The A array:'
   do j = 1, 5                
      print*, a(j)           
   end do 
   
   Print *, 'The B array:'
   do i = lbound(b,1), ubound(b,1)
      write(*,*) (b(i,j), j = lbound(b,2), ubound(b,2))
   end do

   Print *, 'The C array:' 
   do j = 1, 10                
      print*, c(j)           
   end do      
   
end program dataStatement
