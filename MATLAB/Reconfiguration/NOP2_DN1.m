function mpc = NOP2_DN1
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%bus_i  type  Pd  Qd  Gs  Bs  area  Vm  Va  baseKV  zone  Vmax  Vmin
mpc.bus = [
    15  3  0.000  0.00  0  0  1  1  0  22  1  1.2  0.8
    16	1  38.59  5.42  0  0  1	 1	0  22  1  1.2  0.8
    17	1  38.15  5.47	0  0  1	 1	0  22  1  1.2  0.8
    18	1  27.46  5.35	0  0  1	 1	0  22  1  1.2  0.8
    19	1  32.82  5.02	0  0  1	 1	0  22  1  1.2  0.8
    20	1  38.59  5.42	0  0  1	 1	0  22  1  1.2  0.8
    21	1  38.59  5.42	0  0  1	 1	0  22  1  1.2  0.8
];
% 3 - slack bus, 2 - PV bus, 1 - PQ bus

%% generator data
%bus  Pg  Qg  Qmax  Qmin  Vg  mBase  status  Pmax  Pmin  Pc1  Pc2  Qc1min  Qc1max  Qc2min  Qc2max  ramp_agc  ramp_10  ramp_30  ramp_q  apf
mpc.gen = [
    15  1000  1000  1500  -1500  1  1  1  2000  0  0  0  0  0  0  0  0  0  0  0  0
];

%% branch data
%fbus  tbus  r  x  b  rateA  rateB  rateC  ratio  angle  status  angmin  angmax
mpc.branch = [
    15  16  0.000394176  0.000135417  0.026794351  0  0  0  0  0  1  -360  360
    16	17	0.000394176	 0.000135417  0.026794351  0  0	 0	0  0  1	 -360  360
    17	18	0.000394176	 0.000135417  0.026794351  0  0	 0	0  0  1	 -360  360
    18	19	0.000394176	 0.000135417  0.026794351  0  0	 0	0  0  1	 -360  360
    19	20	0.000394176	 0.000135417  0.026794351  0  0	 0	0  0  1	 -360  360
    20	21	0.000394176	 0.000135417  0.026794351  0  0  0	0  0  1	 -360  360
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
    2  0  0  3  0.02  2  0
];
