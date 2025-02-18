clc
clear all

connect1=[1,2;2,3;3,4];
connect2=[1,2;2,3;3,4;4,1];
connects={connect1,connect2};

Target1 = [2,0;1,0;-1,0;-2,0];
Target2 = [2,2;2,-2;-2,-2;-2,2];
Targets(:,:,1) = Target1;
Targets(:,:,2) = Target2;

% ksi = zeros(16,1);
% ksi=[2;0;2;0;2;0;-2;0;-2;0;-2;0;-2;0;2;0]+4;
ksi=[2;0;0;0;1;0;0;0;-1;0;0;0;-2;0;0;0];

F1 = Formations(Targets,connects);
F1.cal_matrices()

F1.cal_global_error(ksi);
F1.cal_local_error(ksi);