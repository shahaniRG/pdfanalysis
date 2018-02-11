%coords = [18*rand(1,1157); 18*rand(1,1157); 3*rand(1,1157) ]; % in this example we will calculate
%coords = all';
%A = [7.5,7.5,7.5; 7,7,7; 8,8,8; 9,9,9; 6,6,6; 4,4,4; 2,2,2; 1,1,1; 0,0,0];
%coords = coords2';
% the RDF for a random sett of 100 coordinates. first row is x coordinates, 
% second row is y coordinates.

Lx = 18;% max(coords2(:,1)) - min(coords2(:,1)); % board size 
Ly = 18; %max(coords2(:,2)) - min(coords2(:,2));
Lz = 2; %max(coords2(:,3)) - min(coords2(:,3));

NumOfBins = 100; % How many bins you want in your RDF histogram. this is 
% the RDF's resolution.

gR = struct; % create a struct, this is where our RDF 
%(radial distribution function) will be at the end of this calculation.

% initialize gR struct 
gR = radialDistribution3D2(0,gR,coords,Lx,Ly,Lz,NumOfBins);

% Loop over pairs and determine the distribution of distances 
gR = radialDistribution3D2(1,gR,coords,Lx,Ly,Lz,NumOfBins);

% Normalize distance distribution histogram to get the RDF 
gR = radialDistribution3D2(2,gR,coords,Lx,Ly,Lz,NumOfBins);

% plot Result 
figure; gR = radialDistribution3D2(3,gR,coords,Lx,Ly,Lz,NumOfBins);