program triang
   implicit none

   ! define variables
   double precision :: a, b, c, x, y, z, pi
   integer :: n
   a = 1.4
   pi = 3.1416
   b = a/2
   c = SQRT(a**2-b**2)!hipotenusa

   OPEN(UNIT=1,FILE='triangulene.xyz')
   
   WRITE(1,*)13
   WRITE(1,*)
   
   	!primeiro benzeno
   do n = 0, 300, 60
      x = a * cos(n * pi / 180.0)
      y = a * sin(n * pi / 180.0)
      z = 0.0
      WRITE(1,*)'C', x, y, z
      print *, x, y, z
   end do
   
   
   
   
   do n = 60, 120,60
      x = a * cos(n * pi / 180.0)+(a*1.5)
      y = a * sin(n * pi / 180.0)+c
      z = 0.0
      WRITE(1,*)'C', x, y, z
      print *, x, y, z
   end do
   do n = 300, 360,60
      x = a * cos(n * pi / 180.0)+(a*1.5)
      y = a * sin(n * pi / 180.0)+c
      z = 0.0
      WRITE(1,*)'C', x, y, z
      print *, x, y, z
   end do
   
   
   
   
   do n = 240, 360,60
      x = a * cos(n * pi / 180.0)+(a*1.5)
      y = a * sin(n * pi / 180.0)-c
      z = 0.0
      WRITE(1,*)'C', x, y, z
      print *, x, y, z
   end do
   CLOSE(UNIT=1)

end program triang
