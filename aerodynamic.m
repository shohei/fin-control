clear; close all;

%% 3.1 General Aerodynamical properties

%% 3.1.1 Aerodynamic force coefficients: 空力係数
CN = N/(1/2*rho*v0^2*Aref);   % Normal force coefficient
Cm = m/(1/2*rho*v0^2*Aref*d); % Pitch moment coefficient
CNa = CN/alpha; % alpha > 0
Cma = Cm/alpha; % alpha > 0
Cmd = Cm*d-CN*deltaX;       % Pitch moment coefficient at deltaX

%Center of pressure (CP)
X = Cm/CN*d; % alpha > 0

% for very small alpha (alpha<<1)
% CN = CNa * alhpa;
% Cm = Cma * alhpa;
%X = Cma/CNa*d;

CD = D/(1/2*rho*v0^2*Aref); % Drag coefficient
Cl = l/(1/2*rho*v0^2*Aref); % Roll moment coefficient;

%% 3.1.2 Velocity regions
M = v0/c; % Mach number

%% 3.1.3 Flow and geometry parameters
R = v0*L/nu;      % Reynolds number
beta = sqrt(M^2-1); % Speed parameter beta
P = 1/beta; % Prandtl factor

%% 3.1.4 Coordinate systems

%% 3.2 Normal forces and pitching moments

%% 3.2.1 Axially symmetric body components
% CNa of body components at subsonic speeds
syms A(x);
syms w(x);
N = @(x) rho*v0*diff(A(x)*w(x));
w = @(x) v0*sin(alpha);
CN = @(x) 2*sin(alpha)/Aref*diff(A(x));



% Cma of body components at subsonic speeds






