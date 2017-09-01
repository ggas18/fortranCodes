program dynamic_array 
implicit none 

   !rank is 2, but size not known   
   real, dimension (:,:), allocatable :: darray    
   integer :: s1, s2     
   integer :: i, j     
   character( len=20):: nom
   print*, "Enter the size of the array:"     
   read*, s1, s2
   !go to 24 ! test for GO TO and STRING READING  
   
   !allocate memory      
   allocate ( darray(s1,s2) )      
   
   do i = 1, s1           
      do j = 1, s2                
         darray(i,j) = i*j               
         print*, 'darray(',i,',',j,')= ', darray(i,j)           
      end do      
   end do      
   
   deallocate (darray) 
   !24 continue !test for GO TO and STRING READING  
   !print*, nom !test for GO TO and STRING READING   
end program dynamic_array
