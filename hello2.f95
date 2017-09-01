program hello
implicit none

   character(len=15) :: surname, firstname 
   character(len=6) :: title 
   character(len=40):: name
   character(len=25):: greetings
   
   title = 'Mr. ' 
   firstname = 'Rowan' 
   surname = 'Atkinson'
   greetings = 'A big hello from Mr. Beans'
   
   name = adjustl(title)//adjustl(firstname)//adjustl(surname)
   print *, 'adjustl', name
   print *, greetings
   
   name = adjustr(title)//adjustr(firstname)//adjustr(surname)
   print *, 'adjustr', name
   print *, greetings
   
   name = trim(title)//trim(firstname)//trim(surname)
   print *, 'Here is', name
   print *, greetings
   
end program hello
