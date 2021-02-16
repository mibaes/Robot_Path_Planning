function [] = Plot_Geometrie(p0,p1,p2,hs,he)
%figure
%Hilndernis Linie
hx1 = hs(1)
hy1 = hs(2)
hx2 = he(1)
hy2 = he(2)

% Arm 1 (Theta1)
a1x1 = p0(1)
a1y1 = p0(2)
a1x2 = p1(1)
a1y2 = p1(2)

% Arm2 (Theta1 Theta2)
a2x1 = p1(1)
a2y1 = p1(2)
a2x2 = p2(1)
a2y2 = p2(2)


plot([hx1 hx2] , [hy1 hy2],'b')%Hindernis
hold on

plot([a1x1 a1x2] , [a1y1 a1y2],'r') % Arm 1 (Theta1)
plot([a2x1 a2x2] , [a2y1 a2y2],'g')% Arm2 (Theta1 Theta2)

xlim([-4 4])%Darstellungsbereich x
ylim([-4 4])%Darstellungsbereich y
end