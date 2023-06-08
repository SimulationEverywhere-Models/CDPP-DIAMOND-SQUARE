[top]
components : DiamondSquare

[DiamondSquare]
type : cell
dim : (17,17,2)
delay : transport
defaultDelayTime : 100
border : nowrapped 
neighbors : DiamondSquare(-1,-1,0)  DiamondSquare(-1,0,0) DiamondSquare(-1,1,0) 
neighbors : DiamondSquare(0,-1,0)  DiamondSquare(0,0,0)  DiamondSquare(0,1,0)
neighbors : DiamondSquare(1,-1,0)  DiamondSquare(1,0,0)  DiamondSquare(1,1,0)
neighbors : DiamondSquare(0,0,1)
initialvalue : 0
initialCellsValue : DiamondSquare.val
zone : DiamondSquare-rule { (0,0,0)..(16,16,0) }
zone : second-rule { (0,0,1)..(16,16,1) }


[second-rule]
rule : {trunc((0,0,0))+0.1} 200 {fractional((0,0,0)) = 0}
rule : {trunc((0,0,0))+ 1 } 100 {fractional((0,0,0)) = 0.1}

rule : {0} 1000 {t}

[DiamondSquare-rule]
% cal
rule : {trunc(((-1,-1,0)+(1,1,0)+(-1,1,0)+(1,-1,0))/4 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10 { (0,0,0)=0 and (-1,-1,0) > 0 and (1,1,0) > 0 and (-1,1,0) > 0 and (1,-1,0) > 0 and fractional((-1,-1,0)) = 0.81}
															 
rule : {trunc(((-1,-1,0)+( 1,1,0)+(-1, 1,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (-1,-1,0) > 0 and (1,1,0) > 0 and (-1,1,0) > 0 and (1,-1,0) = ?}
rule : {trunc(((-1,-1,0)+( 1,1,0)+( 1,-1,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (-1,-1,0) > 0 and (1,1,0) > 0 and (-1,1,0) = ? and (1,-1,0) > 0}
rule : {trunc(((-1,-1,0)+(-1,1,0)+( 1,-1,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (-1,-1,0) > 0 and (1,1,0) = ? and (-1,1,0) > 0 and (1,-1,0) > 0}
rule : {trunc((( 1, 1,0)+(-1,1,0)+( 1,-1,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (-1,-1,0) = ? and (1,1,0) > 0 and (-1,1,0) > 0 and (1,-1,0) > 0}

rule : {trunc(((0,-1,0)+(0,1,0)+(-1,0,0)+ (1,0,0))/4 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1,0) > 0  and (0,1,0) > 0 and (-1,0,0) > 0 and (1,0,0) > 0 
															   and fractional((-1,0,0)) = 0.31}
                                                                                
rule : {trunc(((0,-1,0)+( 0,1,0)+(-1,0,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1, 0) > 0 and (0,1,0) > 0 and (-1,0,0) > 0 and (1,0,0) = ? }
rule : {trunc(((0,-1,0)+( 0,1,0)+( 1,0,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1, 0) > 0 and (0,1,0) > 0 and (-1,0,0) = ? and (1,0,0) > 0 }
rule : {trunc(((0,-1,0)+(-1,0,0)+( 1,0,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1, 0) > 0 and (0,1,0) = ? and (-1,0,0) > 0 and (1,0,0) > 0 }
rule : {trunc(((0, 1,0)+(-1,0,0)+( 1,0,0))/3 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1, 0) = ? and (0,1,0) > 0 and (-1,0,0) > 0 and (1,0,0) > 0 } 

%last cal
rule : {trunc(((-1,-1,0)+(1,1,0)+(-1,1,0)+(1,-1,0))/4 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10 { (0,0,0)=0 and (-1,-1,0) > 0 and (1,1,0) > 0 and (-1,1,0) > 0 and (1,-1,0) > 0 
																and	fractional((-1,-1,0)) = 0 
																and fractional(( 1, 1,0)) = 0 
																and fractional((-1, 1,0)) = 0 
																and fractional(( 1,-1,0)) = 0}
				
rule : {trunc(((0,-1,0)+(0,1,0)+(-1,0,0)+ (1,0,0))/4 + uniform(-1,1) * 10000 * power(2,-1 *(0,0,1)))} 10	{ (0,0,0)=0 and (0,-1,0) > 0  and (0,1,0) > 0 and (-1,0,0) > 0 and (1,0,0) > 0 
																and fractional(( 0,-1,0)) = 0  
																and fractional(( 0, 1,0)) = 0 
																and fractional((-1, 0,0)) = 0 
																and fractional(( 1, 0,0)) = 0 }

				
				
% send
rule : {trunc((-1,-1,0))+0.81} 10 { (0,0,0)=0 and (-1,-1,0) != 0 and (fractional((-1,-1,0)) = 0.8 or fractional((-1,-1,0)) = 0 ) and even((0,0,1))} 
rule : {trunc((1,  1,0))+0.61} 10 { (0,0,0)=0 and (1,  1,0) != 0 and (fractional((1,  1,0)) = 0.6 or fractional(( 1, 1,0)) = 0 ) and even((0,0,1))} 
rule : {trunc((-1, 1,0))+0.71} 10 { (0,0,0)=0 and (-1, 1,0) != 0 and (fractional((-1, 1,0)) = 0.7 or fractional((-1, 1,0)) = 0 ) and even((0,0,1))} 
rule : {trunc((1, -1,0))+0.51} 10 { (0,0,0)=0 and (1, -1,0) != 0 and (fractional((1, -1,0)) = 0.5 or fractional(( 1,-1,0)) = 0 ) and even((0,0,1))} 
% send
rule : {trunc((0, -1,0))+0.41} 10 { (0,0,0)=0 and (0, -1,0) != 0 and (fractional((0, -1,0)) = 0.4 or fractional((0, -1,0)) = 0 ) and odd((0,0,1))} 
rule : {trunc((0,  1,0))+0.21} 10 { (0,0,0)=0 and (0,  1,0) != 0 and (fractional((0,  1,0)) = 0.2 or fractional((0,  1,0)) = 0 ) and odd((0,0,1))} 
rule : {trunc((1,  0,0))+0.11} 10 { (0,0,0)=0 and (1,  0,0) != 0 and (fractional((1,  0,0)) = 0.1 or fractional((1,  0,0)) = 0 ) and odd((0,0,1))} 
rule : {trunc((-1, 0,0))+0.31} 10 { (0,0,0)=0 and (-1, 0,0) != 0 and (fractional((-1, 0,0)) = 0.3 or fractional((-1, 0,0)) = 0 ) and odd((0,0,1))} 


% clear
rule : {0} 0 { fractional((0,0,0))=0.8 } 
rule : {0} 0 { fractional((0,0,0))=0.6 } 
rule : {0} 0 { fractional((0,0,0))=0.7 }
rule : {0} 0 { fractional((0,0,0))=0.5 } 

rule : {0} 0 { fractional((0,0,0))=0.4 } 
rule : {0} 0 { fractional((0,0,0))=0.3 } 
rule : {0} 0 { fractional((0,0,0))=0.2 }
rule : {0} 0 { fractional((0,0,0))=0.1 } 

% keep direction
rule : {trunc((0,0,0))+0.8} 10 {fractional((0,0,0))=0.81 }
rule : {trunc((0,0,0))+0.7} 10 {fractional((0,0,0))=0.71 }
rule : {trunc((0,0,0))+0.6} 10 {fractional((0,0,0))=0.61 }
rule : {trunc((0,0,0))+0.5} 10 {fractional((0,0,0))=0.51 }

rule : {trunc((0,0,0))+0.4} 10 {fractional((0,0,0))=0.41 }
rule : {trunc((0,0,0))+0.3} 10 {fractional((0,0,0))=0.31 }
rule : {trunc((0,0,0))+0.2} 10 {fractional((0,0,0))=0.21 }
rule : {trunc((0,0,0))+0.1} 10 {fractional((0,0,0))=0.11 }
% all clear

rule : {0} 0 {fractional((0,0,0)) > 0 and ((0,0,1) = 2 or (0,0,1) = 4)}

rule : {(0,0,0)} 10 {t}