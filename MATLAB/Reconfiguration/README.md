This folder is about three self-identified reconfiguration plan.

There are three configurations:
- Only close NOP1 switch
- Only close NOP2 switch
- Only close NOP3 switch

For example, `NOP1_DN1.m` means it is the power distribution network (DN) 1 when only NOP1 closed. 

Power flow analysis can be conducted using MATPOWER. To implement the Current Summation Method for power flow, you can use the following code:
```
mpc = loadcase(NOP1_DN1);
mpopt=mpoption('pf.alg', 'ISUM', 'pf.tol', 1e-4);
runpf(mpc,mpopt)
```
