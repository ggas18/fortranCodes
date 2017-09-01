program helloCat

implicit none

   character(len=15) :: surname, firstname 
   character(len=6) :: title 
   character(len=40):: name
   character(len=25)::greetings
   
   title = 'Mr.' 
   firstname = 'Rowan' 
   surname = 'Atkinson'
   
   name = title//firstname//'arouna'
   greetings = 'A big hello from Mr. Beans'
   
   print *, 'Here is', name
   print *, greetings

end program helloCat
