function mpc = NOP3_DN1
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%bus_i  type  Pd  Qd  Gs  Bs  area  Vm  Va  baseKV  zone  Vmax  Vmin
mpc.bus = [
    8	1  190.3  81.38	0  0  1	 1	0  22  1  1.2  0.8
    9	1  28.76  4.95	0  0  1	 1	0  22  1  1.2  0.8
    10	1  190.3  81.38	0  0  1	 1	0  22  1  1.2  0.8
    11	1  27.46  5.35	0  0  1	 1	0  22  1  1.2  0.8
    12	1  32.82  5.02	0  0  1	 1	0  22  1  1.2  0.8
    13	1  38.59  5.42	0  0  1	 1	0  22  1  1.2  0.8
    14	3  0.000  0.00	0  0  1	 1	0  22  1  1.2  0.8
];
% 3 - slack bus, 2 - PV bus, 1 - PQ bus

%% generator data
%bus  Pg  Qg  Qmax  Qmin  Vg  mBase  status  Pmax  Pmin  Pc1  Pc2  Qc1min  Qc1max  Qc2min  Qc2max  ramp_agc  ramp_10  ramp_30  ramp_q  apf
mpc.gen = [
    14  1000  1000  1500  -1500  1  1  1  2000  0  0  0  0  0  0  0  0  0  0  0  0
];

%% branch data
%fbus  tbus  r  x  b  rateA  rateB  rateC  ratio  angle  status  angmin  angmax
mpc.branch = [
    14	13	0.000845366  0.000284806  0.057272218  0  0	 0	0  0  1	 -360  360
    13	12	0.000650678  0.000465415  0.138669141  0  0  0	0  0  1  -360  360
    12	11	0.000186264	 8.83967E-05  0.020039071  0  0	 0	0  0  1	 -360  360
    11	10	8.33801E-05  3.95703E-05  0.008970369  0  0  0	0  0  1  -360  360
    10	9	5.29711E-05	 2.71261E-05  0.005556479  0  0  0	0  0  1  -360  360
    9	8	4.96363E-05	 2.64194E-05  0.005739856  0  0	 0	0  0  1	 -360  360
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
    2  0  0  3  0.02  2  0
];
