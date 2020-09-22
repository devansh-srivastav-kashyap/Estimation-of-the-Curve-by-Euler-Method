%% ----------------------------------------------------------------------------
% Author- Devansh Srivastava

% This code uses the Euler Approximation Method to find the approximate solution
% to the Differential Equation. 
% Equation followed- y(n+h)=y(n)+h*f(xn,yn)
% As you reduce the magnitude of step size, the approximation will get more accurate.
% This method can be used to identify the shape of an unidentified curve if the initial point and
% the differential equation is known..

% Input taken from the user---> 
%       step size= differences between two x
%       initialx and initialy are the initial values
%       finalx is the coordinate of x at which we want to get the output_max_field_width

% Output drawn----> 
%       Approximated Curve



function [y,x]= Euler(stepsize,initialx,initialy,finalx)
  % x stores the x coordinates and y stores the y coordinates
  x=(initialx:stepsize:finalx);
  y=zeros(size(x));
  y(initialx+1)=initialy;
  % equation
  for i=initialx+1:1:length(x)-1
    y(i+1)=y(i)+stepsize*(f(y(i),x(i)));
  end
  plot(x,y,'linewidth',3,'r'); 
end

function dydx= f(y,x)
  dydx= y-x;
end

%%-----------------------------------------------------------------------------