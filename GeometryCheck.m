%Funktion prüft, ob sich Punkt p in einem Quader (a*b*c) befindet oder nicht
dphi1 = 360^-1;
dphi2 = 360^-1;
dz = 360;
cx = size(-2*pi/2:pi,2)/dphi1;
cy = size(-2*pi/2:pi,2)/dphi2;
cz = 0;
L1=1
L2=1
%Theta1=0
%Theta2=0
GetTCP(L1,Theta1,L2,Theta2)

dV = [dx;dy;dz]; %Schrittweite
Config_Space = zeros (cx, cy); %Konfigurationsraum 2D, mit cz , wenn 3d
Config_Space_Angle_Pairs = Config_Space;
for i=1:size(Config_Space,1)
    for j=1:size(Config_Space,2)
        
        Config_Space_Angle_TCP_Points_x(i,j) = i+j;
        Config_Space_Angle_TCP_Points_x(i,j) = i+j;
    end
    
end


