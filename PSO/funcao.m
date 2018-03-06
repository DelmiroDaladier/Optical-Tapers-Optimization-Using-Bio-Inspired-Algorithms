function out = funcao( H )
%
% tccmt.m
%
% Model exported on Sep 24 2017, 12:37 by COMSOL 5.3.0.223.

import com.comsol.model.*
import com.comsol.model.util.*

if((any(H < 0)) ||(any(H>8)))
   out = 100000; 
   return;
end
model = ModelUtil.create('Model');

model.modelPath('C:\Users\dalad\Documents\tccdson');

model.label('tccFinal.mph');

model.comments(['Untitled\n\n']);

model.param.set('h1', [num2str(H(1)),' [um]'],'Tamanho do componente');
model.param.set('h2', [num2str(H(2)),' [um]'],'Tamanho do componente');
model.param.set('h3', [num2str(H(3)),' [um]'],'Tamanho do componente');
model.param.set('h4', [num2str(H(4)),' [um]'],'Tamanho do componente');
model.param.set('h5', [num2str(H(5)),' [um]'],'Tamanho do componente');
model.param.set('h6', [num2str(H(6)),' [um]'],'Tamanho do componente');
model.param.set('h7', [num2str(H(7)),' [um]'],'Tamanho do componente');
model.param.set('h8', [num2str(H(8)),' [um]'],'Tamanho do componente');
model.param.set('lambda', '1.51[um]');
model.param.set('width', '14[um]');
model.param.set('height', '10[um]');
model.param.set('len', '0.8[um]');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 2);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('r1').set('pos', {'7[um]' '0'});
model.component('comp1').geom('geom1').feature('r1').set('base', 'center');
model.component('comp1').geom('geom1').feature('r1').set('size', {'width' 'height'});
model.component('comp1').geom('geom1').create('r2', 'Rectangle');
model.component('comp1').geom('geom1').feature('r2').set('pos', {'0.4[um]' '0'});
model.component('comp1').geom('geom1').feature('r2').set('base', 'center');
model.component('comp1').geom('geom1').feature('r2').set('size', {'0.8[um]' '8[um]'});
model.component('comp1').geom('geom1').create('pol1', 'Polygon');
model.component('comp1').geom('geom1').feature('pol1').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol1').set('table', {'0.8[um]' '4 [um]'; '0.8[um]' '-4 [um]'; '1.6[um]' '-h1/2'; '1.6[um]' 'h1/2'});
model.component('comp1').geom('geom1').create('pol2', 'Polygon');
model.component('comp1').geom('geom1').feature('pol2').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol2').set('table', {'1.6 [um]' 'h1/2'; '1.6 [um]' '-h1/2'; '2.4 [um]' '-h2/2'; '2.4 [um]' 'h2/2'});
model.component('comp1').geom('geom1').create('pol3', 'Polygon');
model.component('comp1').geom('geom1').feature('pol3').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol3').set('table', {'2.4[um]' 'h2/2'; '2.4[um]' '-h2/2'; '3.2[um]' '-h3/2'; '3.2[um]' 'h3/2'});
model.component('comp1').geom('geom1').create('pol4', 'Polygon');
model.component('comp1').geom('geom1').feature('pol4').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol4').set('table', {'3.2[um]' 'h3/2'; '3.2[um]' '-h3/2'; '4[um]' '-h4/2'; '4[um]' 'h4/2'});
model.component('comp1').geom('geom1').create('pol5', 'Polygon');
model.component('comp1').geom('geom1').feature('pol5').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol5').set('table', {'4[um]' 'h4/2'; '4[um]' '-h4/2'; '4.8[um]' '-h5/2'; '4.8[um]' 'h5/2'});
model.component('comp1').geom('geom1').create('pol6', 'Polygon');
model.component('comp1').geom('geom1').feature('pol6').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol6').set('table', {'4.8[um]' 'h5/2'; '4.8[um]' '-h5/2'; '5.6[um]' '-h6/2'; '5.6[um]' 'h6/2'});
model.component('comp1').geom('geom1').create('pol7', 'Polygon');
model.component('comp1').geom('geom1').feature('pol7').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol7').set('table', {'5.6[um]' 'h6/2'; '5.6[um]' '-h6/2'; '6.4[um]' '-h7/2'; '6.4[um]' 'h7/2'});
model.component('comp1').geom('geom1').create('pol8', 'Polygon');
model.component('comp1').geom('geom1').feature('pol8').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol8').set('table', {'6.4[um]' 'h7/2'; '6.4[um]' '-h7/2'; '7.2[um]' '-h8/2'; '7.2[um]' 'h8/2'});
model.component('comp1').geom('geom1').create('pol9', 'Polygon');
model.component('comp1').geom('geom1').feature('pol9').set('source', 'table');
model.component('comp1').geom('geom1').feature('pol9').set('table', {'7.2[um]' 'h8/2'; '7.2[um]' '-h8/2'; '8[um]' '-0.5[um]'; '8[um]' '0.5[um]'});
model.component('comp1').geom('geom1').create('r3', 'Rectangle');
model.component('comp1').geom('geom1').feature('r3').set('pos', {'9 [um]' '0'});
model.component('comp1').geom('geom1').feature('r3').set('base', 'center');
model.component('comp1').geom('geom1').feature('r3').set('size', {'2 [um]' '1 [um]'});
model.component('comp1').geom('geom1').run;

model.material.create('mat1', 'Common', '');
model.component('comp1').material.create('mat2', 'Common');
model.component('comp1').material.create('mat3', 'Common');
model.material('mat1').info.create('Composition');
model.material('mat1').propertyGroup('def').func.create('k', 'Piecewise');
model.material('mat1').propertyGroup('def').func.create('C', 'Piecewise');
model.material('mat1').propertyGroup('def').func.create('rho_gas_2', 'Piecewise');
model.material('mat1').propertyGroup('def').func.create('TD', 'Piecewise');
model.material('mat1').propertyGroup('def').func.create('eta', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func.create('eta', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func.create('Cp', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func.create('rho', 'Analytic');
model.component('comp1').material('mat2').propertyGroup('def').func.create('k', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func.create('cs', 'Analytic');
model.component('comp1').material('mat2').propertyGroup.create('RefractiveIndex', 'Refractive index');
model.component('comp1').material('mat3').selection.set([2 3 4 5 6 7 8 9 10 11 12]);
model.component('comp1').material('mat3').propertyGroup.create('RefractiveIndex', 'Refractive index');

model.component('comp1').physics.create('emw', 'ElectromagneticWaves', 'geom1');
model.component('comp1').physics('emw').create('port1', 'Port', 1);
model.component('comp1').physics('emw').feature('port1').selection.set([3]);
model.component('comp1').physics('emw').create('sctr1', 'Scattering', 1);
model.component('comp1').physics('emw').feature('sctr1').selection.set([1 2 5 7 39]);

model.component('comp1').mesh('mesh1').create('ftri1', 'FreeTri');
model.component('comp1').mesh('mesh1').feature('ftri1').create('size1', 'Size');
model.component('comp1').mesh('mesh1').feature('ftri1').feature('size1').selection.geom('geom1', 2);
model.component('comp1').mesh('mesh1').feature('ftri1').feature('size1').selection.all;

model.component('comp1').view('view1').axis.set('xmin', -3.4999970921489876E-7);
model.component('comp1').view('view1').axis.set('xmax', 1.4350000128615648E-5);
model.component('comp1').view('view1').axis.set('ymin', -8.294035978906322E-6);
model.component('comp1').view('view1').axis.set('ymax', 8.294035978906322E-6);
model.component('comp1').view('view1').axis.set('abstractviewlratio', -0.14851415157318115);
model.component('comp1').view('view1').axis.set('abstractviewrratio', 0.14851418137550354);
model.component('comp1').view('view1').axis.set('abstractviewbratio', -0.05000001937150955);
model.component('comp1').view('view1').axis.set('abstractviewtratio', 0.05000001937150955);
model.component('comp1').view('view1').axis.set('abstractviewxscale', 2.099236517949521E-8);
model.component('comp1').view('view1').axis.set('abstractviewyscale', 2.099236695585205E-8);

model.material('mat1').label('Air [gas]');
model.material('mat1').set('family', 'custom');
model.material('mat1').set('specular', 'custom');
model.material('mat1').set('customspecular', [0.9803921568627451 0.9803921568627451 0.9803921568627451]);
model.material('mat1').set('diffuse', 'custom');
model.material('mat1').set('customdiffuse', [0.9019607843137255 0.9019607843137255 1]);
model.material('mat1').set('ambient', 'custom');
model.material('mat1').set('customambient', [0.9019607843137255 0.9019607843137255 1]);
model.material('mat1').set('noise', true);
model.material('mat1').set('noisescale', 0.08);
model.material('mat1').set('noisefreq', 3);
model.material('mat1').set('lighting', 'simple');
model.material('mat1').info('Composition').body('78.09 N2, 20.95 O2, 0.93 Ar, 0.039 CO2, trace others (vol%)');
model.material('mat1').propertyGroup('def').func('k').set('arg', 'T');
model.material('mat1').propertyGroup('def').func('k').set('pieces', {'70.0' '1000.0' '-8.404165E-4+1.107418E-4*T^1-8.635537E-8*T^2+6.31411E-11*T^3-1.88168E-14*T^4'});
model.material('mat1').propertyGroup('def').func('C').set('arg', 'T');
model.material('mat1').propertyGroup('def').func('C').set('pieces', {'100.0' '375.0' '1010.97+0.0439479*T^1-2.922398E-4*T^2+6.503467E-7*T^3'; '375.0' '1300.0' '1093.29-0.6355521*T^1+0.001633992*T^2-1.412935E-6*T^3+5.59492E-10*T^4-8.663072E-14*T^5'; '1300.0' '3000.0' '701.0807+0.8493867*T^1-5.846487E-4*T^2+2.302436E-7*T^3-4.846758E-11*T^4+4.23502E-15*T^5'});
model.material('mat1').propertyGroup('def').func('rho_gas_2').set('arg', 'T');
model.material('mat1').propertyGroup('def').func('rho_gas_2').set('pieces', {'80.0' '3000.0' '352.716*T^-1'});
model.material('mat1').propertyGroup('def').func('TD').set('arg', 'T');
model.material('mat1').propertyGroup('def').func('TD').set('pieces', {'300.0' '753.0' '1.713214E-4-1.204913E-6*T^1+2.839046E-9*T^2-1.532799E-12*T^3'; '753.0' '873.0' '0.00416418-1.191227E-5*T^1+8.863636E-9*T^2'});
model.material('mat1').propertyGroup('def').func('eta').set('arg', 'T');
model.material('mat1').propertyGroup('def').func('eta').set('pieces', {'120.0' '600.0' '-1.132275E-7+7.94333E-8*T^1-7.197989E-11*T^2+5.158693E-14*T^3-1.592472E-17*T^4'; '600.0' '2150.0' '3.892629E-6+5.75387E-8*T^1-2.675811E-11*T^2+9.709691E-15*T^3-1.355541E-18*T^4'});
model.material('mat1').propertyGroup('def').set('thermalconductivity', {'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]'});
model.material('mat1').propertyGroup('def').set('heatcapacity', 'C(T[1/K])[J/(kg*K)]');
model.material('mat1').propertyGroup('def').set('density', 'rho_gas_2(T[1/K])[kg/m^3]');
model.material('mat1').propertyGroup('def').set('TD', 'TD(T[1/K])[m^2/s]');
model.material('mat1').propertyGroup('def').set('dynamicviscosity', 'eta(T[1/K])[Pa*s]');
model.material('mat1').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat2').label('Air');
model.component('comp1').material('mat2').set('family', 'air');
model.component('comp1').material('mat2').propertyGroup('def').func('eta').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('eta').set('pieces', {'200.0' '1600.0' '-8.38278E-7+8.35717342E-8*T^1-7.69429583E-11*T^2+4.6437266E-14*T^3-1.06585607E-17*T^4'});
model.component('comp1').material('mat2').propertyGroup('def').func('Cp').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('Cp').set('pieces', {'200.0' '1600.0' '1047.63657-0.372589265*T^1+9.45304214E-4*T^2-6.02409443E-7*T^3+1.2858961E-10*T^4'});
model.component('comp1').material('mat2').propertyGroup('def').func('rho').set('expr', 'pA*0.02897/8.314/T');
model.component('comp1').material('mat2').propertyGroup('def').func('rho').set('args', {'pA' 'T'});
model.component('comp1').material('mat2').propertyGroup('def').func('rho').set('dermethod', 'manual');
model.component('comp1').material('mat2').propertyGroup('def').func('rho').set('argders', {'pA' 'd(pA*0.02897/8.314/T,pA)'; 'T' 'd(pA*0.02897/8.314/T,T)'});
model.component('comp1').material('mat2').propertyGroup('def').func('rho').set('plotargs', {'pA' '0' '1'; 'T' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').func('k').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('k').set('pieces', {'200.0' '1600.0' '-0.00227583562+1.15480022E-4*T^1-7.90252856E-8*T^2+4.11702505E-11*T^3-7.43864331E-15*T^4'});
model.component('comp1').material('mat2').propertyGroup('def').func('cs').set('expr', 'sqrt(1.4*287*T)');
model.component('comp1').material('mat2').propertyGroup('def').func('cs').set('args', {'T'});
model.component('comp1').material('mat2').propertyGroup('def').func('cs').set('dermethod', 'manual');
model.component('comp1').material('mat2').propertyGroup('def').func('cs').set('argders', {'T' 'd(sqrt(1.4*287*T),T)'});
model.component('comp1').material('mat2').propertyGroup('def').func('cs').set('plotargs', {'T' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('dynamicviscosity', 'eta(T[1/K])[Pa*s]');
model.component('comp1').material('mat2').propertyGroup('def').set('ratioofspecificheat', '1.4');
model.component('comp1').material('mat2').propertyGroup('def').set('electricconductivity', {'0[S/m]' '0' '0' '0' '0[S/m]' '0' '0' '0' '0[S/m]'});
model.component('comp1').material('mat2').propertyGroup('def').set('heatcapacity', 'Cp(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat2').propertyGroup('def').set('density', 'rho(pA[1/Pa],T[1/K])[kg/m^3]');
model.component('comp1').material('mat2').propertyGroup('def').set('thermalconductivity', {'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]'});
model.component('comp1').material('mat2').propertyGroup('def').set('soundspeed', 'cs(T[1/K])[m/s]');
model.component('comp1').material('mat2').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat2').propertyGroup('def').addInput('pressure');
model.component('comp1').material('mat2').propertyGroup('RefractiveIndex').set('n', '');
model.component('comp1').material('mat2').propertyGroup('RefractiveIndex').set('ki', '');
model.component('comp1').material('mat2').propertyGroup('RefractiveIndex').set('n', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('RefractiveIndex').set('ki', {'0' '0' '0' '0' '0' '0' '0' '0' '0'});
model.component('comp1').material('mat3').label('Glass (quartz)');
model.component('comp1').material('mat3').set('family', 'custom');
model.component('comp1').material('mat3').set('specular', 'custom');
model.component('comp1').material('mat3').set('diffuse', 'custom');
model.component('comp1').material('mat3').set('ambient', 'custom');
model.component('comp1').material('mat3').set('noise', true);
model.component('comp1').material('mat3').set('noisefreq', 1);
model.component('comp1').material('mat3').set('lighting', 'cooktorrance');
model.component('comp1').material('mat3').set('fresnel', 0.99);
model.component('comp1').material('mat3').set('roughness', 0.02);
model.component('comp1').material('mat3').set('customspecular', [1 1 1]);
model.component('comp1').material('mat3').set('customdiffuse', [1 1 1]);
model.component('comp1').material('mat3').set('customambient', [1 1 1]);
model.component('comp1').material('mat3').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat3').propertyGroup('def').set('electricconductivity', {'1e-14[S/m]' '0' '0' '0' '1e-14[S/m]' '0' '0' '0' '1e-14[S/m]'});
model.component('comp1').material('mat3').propertyGroup('def').set('relpermittivity', {'4.2' '0' '0' '0' '4.2' '0' '0' '0' '4.2'});
model.component('comp1').material('mat3').propertyGroup('def').set('density', '2210[kg/m^3]');
model.component('comp1').material('mat3').propertyGroup('def').set('thermalconductivity', {'1.4[W/(m*K)]' '0' '0' '0' '1.4[W/(m*K)]' '0' '0' '0' '1.4[W/(m*K)]'});
model.component('comp1').material('mat3').propertyGroup('def').set('heatcapacity', '730[J/(kg*K)]');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('n', '');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('ki', '');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('n', {'1.5' '0' '0' '0' '1.5' '0' '0' '0' '1.5'});
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('ki', {'0' '0' '0' '0' '0' '0' '0' '0' '0'});

model.component('comp1').physics('emw').feature('port1').set('PortType', 'Rectangular');

model.component('comp1').mesh('mesh1').feature('ftri1').feature('size1').set('hauto', 2);
model.component('comp1').mesh('mesh1').run;

model.study.create('std1');
model.study('std1').create('freq', 'Frequency');

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('p1', 'Parametric');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature.remove('fcDef');

model.result.numerical.create('gev1', 'EvalGlobal');
model.result.numerical('gev1').set('probetag', 'none');
model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').create('surf1', 'Surface');

model.study('std1').feature('freq').set('punit', 'Hz');
model.study('std1').feature('freq').set('plist', 'c_const/lambda');

model.sol('sol1').attach('std1');
model.sol('sol1').feature('v1').set('clistctrl', {'p1'});
model.sol('sol1').feature('v1').set('cname', {'freq'});
model.sol('sol1').feature('v1').set('clist', {'c_const/lambda'});
model.sol('sol1').feature('s1').set('stol', 0.01);
model.sol('sol1').feature('s1').feature('aDef').set('complexfun', true);
model.sol('sol1').feature('s1').feature('p1').set('pname', {'freq'});
model.sol('sol1').feature('s1').feature('p1').set('plistarr', {'c_const/lambda'});
model.sol('sol1').feature('s1').feature('p1').set('punit', {'Hz'});
model.sol('sol1').feature('s1').feature('p1').set('pcontinuationmode', 'no');
model.sol('sol1').feature('s1').feature('p1').set('preusesol', 'auto');
model.sol('sol1').feature('s1').feature('d1').label('Suggested Direct Solver (emw)');
model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').runAll;

model.result.numerical('gev1').label('S-parameter, S11dB (emw)');
model.result.numerical('gev1').set('expr', {'emw.S11dB'});
model.result.numerical('gev1').set('unit', {'dB'});
model.result.numerical('gev1').set('descr', {'S11'});
model.result('pg1').label('Electric Field (emw)');
model.result('pg1').set('frametype', 'spatial');
model.result('pg1').set('showlegendsunit', true);
model.result('pg1').feature('surf1').label('Surface');
model.result('pg1').feature('surf1').set('resolution', 'normal');

out = model;

val = mpheval(model,'emw.normE');


   
out = (val.d1(386));


end

