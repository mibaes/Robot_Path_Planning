%Arm 1
Theta1 = pi/20 %
L1 = 1 %Laenge
%Arm2
Theta2 = pi/30 %
L2 = 2 %Laenge 


p0 = [ 0; 0; 0]
p1 = L1*RotateCoordinateSystem([1; 0; 0],[0; 0;Theta1])
p2 = p1 + L2*RotateCoordinateSystem([1; 0; 0],[0; 0;Theta2])

%Hindernis
hs = [0;1.5;0]
he = [0;3;0]

norm(p1)
norm(p2-p1)



n=20
   

for i=1:n
    p0 = [ 0; 0; 0]
    p1 = L1*RotateCoordinateSystem([1; 0; 0],[0; 0;i * Theta1])
    p2 = p1 + L2*RotateCoordinateSystem([1; 0; 0],[0; 0;i * Theta2])

    Plot_Geometrie(p0, p1, p2, hs, he)
    
end

p0 = [ 0; 0; 0]
p1 = L1*RotateCoordinateSystem([1; 0; 0],[0; 0;Theta1])
p2 = p1 + L2*RotateCoordinateSystem([1; 0; 0],[0; 0;Theta2])

Plot_Geometrie(p0, p1, p2, hs, he)