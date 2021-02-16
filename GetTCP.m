function [ p0,p1,p2] = GetTCP(L1,Theta1,L2, Theta2)
    p0 = [ 0; 0; 0]
    p1 = L1*RotateCoordinateSystem([1; 0; 0],[0; 0;i * Theta1])
    p2 = p1 + L2*RotateCoordinateSystem([1; 0; 0],[0; 0;i * Theta2])
end