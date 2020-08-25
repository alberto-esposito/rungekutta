function uf = EEuler(u0,t0,tf,steps,du)
%EEULER Summary of this function goes here
%   Detailed explanation goes here

tau = (tf - t0) / steps;

step = 1;
uf = zeros(steps+1,3);

uf(1,:) = [u0(1),u0(2),t0];

while (step < steps+1)
    time = t0 + step*tau;
    
    Du = du(time, [uf(step,1), uf(step,2)] );
        
    uf(step+1,1) = uf(step,1) + tau*Du(1);
    
    uf(step+1,2) = uf(step,2) + tau*Du(2);
    
    uf(step+1,3) = time;
    
    step = step + 1;  
    
end
    
end

