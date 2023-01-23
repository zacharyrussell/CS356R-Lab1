%%%%%% You may want to adjust these parameters for Exercise 2 %%%%%%%%

duration = 1.6;  % time duration of each note
tau = .5;        % damping time constant
hm = 0.5;        % relative magnitude of harmonic


%%%%% This section should not be changed %%%%%%%%%%%

fs = 22050;
t = 0:1/fs:duration;
exp_damping = .4*exp(-t/tau);

c2f = 65.41;
d2f = 73.42;
e2f = 82.41;
f2f = 87.31;
g2f = 98;
a2f = 110;
b2f = 123.47;

c3f = 2*c2f;
d3f = 2*d2f;
e3f = 2*e2f;
f3f = 2*f2f;
g3f = 2*g2f;
a3f = 2*a2f;
b3f = 2*b2f;

c4f = 4*c2f;
d4f = 4*d2f;
e4f = 4*e2f;
f4f = 4*f2f;
g4f = 4*g2f;
a4f = 4*a2f;
b4f = 4*b2f;

c5f = 8*c2f;
d5f = 8*d2f;
e5f = 8*e2f;
f5f = 8*f2f;
g5f = 8*g2f;
a5f = 8*a2f;
b5f = 8*b2f;

c2 = sin(2*pi*c2f*t).*exp_damping;
d2 = sin(2*pi*d2f*t).*exp_damping;
e2 = sin(2*pi*e2f*t).*exp_damping;
f2 = sin(2*pi*f2f*t).*exp_damping;
g2 = sin(2*pi*g2f*t).*exp_damping;
a2 = sin(2*pi*a2f*t).*exp_damping;
b2 = sin(2*pi*b2f*t).*exp_damping;

c3 = sin(2*pi*c3f*t).*exp_damping;
d3 = sin(2*pi*d3f*t).*exp_damping;
e3 = sin(2*pi*e3f*t).*exp_damping;
f3 = sin(2*pi*f3f*t).*exp_damping;
g3 = sin(2*pi*g3f*t).*exp_damping;
a3 = sin(2*pi*a3f*t).*exp_damping;
b3 = sin(2*pi*b3f*t).*exp_damping;

c4 = sin(2*pi*c4f*t).*exp_damping;
d4 = sin(2*pi*d4f*t).*exp_damping;
e4 = sin(2*pi*e4f*t).*exp_damping;
f4 = sin(2*pi*f4f*t).*exp_damping;
g4 = sin(2*pi*g4f*t).*exp_damping;
a4 = sin(2*pi*a4f*t).*exp_damping;
b4 = sin(2*pi*b4f*t).*exp_damping;

c5 = sin(2*pi*c5f*t).*exp_damping;
d5 = sin(2*pi*d5f*t).*exp_damping;
e5 = sin(2*pi*e5f*t).*exp_damping;
f5 = sin(2*pi*f5f*t).*exp_damping;
g5 = sin(2*pi*g5f*t).*exp_damping;
a5 = sin(2*pi*a5f*t).*exp_damping;
b5 = sin(2*pi*b5f*t).*exp_damping;

%%% redefine notes to include their second harmonic

c2 = c2+hm*c3;
d2 = d2+hm*d3;
e2 = e2+hm*e3;
f2 = f2+hm*f3;
g2 = g2+hm*g3;
a2 = a2+hm*a3;
b2 = b2+hm*b3;

c3 = c3+hm*c4;
d3 = d3+hm*d4;
e3 = e3+hm*e4;
f3 = f3+hm*f4;
g3 = g3+hm*g4;
a3 = a3+hm*a4;
b3 = b3+hm*b4;

c4 = c4+hm*c5;
d4 = d4+hm*d5;
e4 = e4+hm*e5;
f4 = f4+hm*f5;
g4 = g4+hm*g5;
a4 = a4+hm*a5;
b4 = b4+hm*b5;

chord1 = c3 + g3 + e4;


%%%%%%%%%%% Fill in values below for Exercise 1 %%%%%%%%%%%

chord2 = 0;
chord3 = 0;
chord4 = 0;
chord5 = 0;
chord6 = 0;
chord7 = 0;
chord8 = 0;


%%%%%%%%% This part need not be changed %%%%%%%%

song = [chord1 chord2 chord3 chord4 chord5 chord6 chord7 chord8];
figure(2);
t = 0:1/fs:(length(song)-1)/fs;
soundsc(song,fs)
plot(t,song);
