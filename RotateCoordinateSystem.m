function [ pn, Rx, Ry, Rz ] = RotateCoordinateSystem(pa,theta)
%theta Rotation angles
%pa point with respect to K old
%pn point with respect to Knew
%Rx, Ry, Rz Rotation Matrices

tx = theta(1);
ty = theta(2);
tz = theta(3);



 Rx = [1      0        0
      0   cos(tx) -sin(tx)
      0   sin(tx)  cos(tx)];
  
 Ry = [cos(ty)   0     sin(ty)
      0         1       0
     -sin(ty)   0    cos(ty)];
 
 Rz = [cos(tz) -sin(tz) 0
      sin(tz) cos(tz)  0
      0       0        1];
  
pn = Rx * Ry * Rz * pa
end
