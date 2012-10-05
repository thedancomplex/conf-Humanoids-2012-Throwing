% Torsonal Model Constants (one coupler) Bode
% Book 1 Page 4 for Model
% Book 1 Page 3 for system equations
% Name: Daniel M. Lofaro
% Date: 2006-12-01
clf

s = zpk('s');
[AA,BB,CC,DD]=linmod('TRModel'); % get the transfer funtion of the simulink who has that file name 
ssm=ss(AA,BB,CC,DD);            % get transfer to state space model
TFM=tf(ssm);                    % put ss model to transfer funciton
bode(TFM);                      % find step funcion of system
shg
grid on