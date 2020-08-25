
function du = dut(t,u)

dt = 0;

if ( 0 < t && t < 2) 
    dt = sqrt(t*(2-t));
end

du = [0.0, 0.0];
    

du(1) = - sin(u(1)) - ( sin(u(1))-sin(u(2)) ) * cos(u(1)) / 8 + dt;

du(2) = - sin(u(2)) - ( sin(u(2)) - sin(u(1)) ) * cos(u(2)) * 99 / 800;

end


