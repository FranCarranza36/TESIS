% Declaracion de requerimientos
Vin_min = 131;       % tensiones de entrada Vrms
Vin_max = 265;
Vin_nom = 220;

fline_nom = 50;     %frecuencia de la linea Hz
fline_min = 50;

Vout_nom = 120;
Iout_nom = 1.2;     %corriente de salida nominal A
Vripple = 2;        % tension de ripple en V
fsw = 100000;       %frecuencia de switch HZ
rend = 0.85;        %rendimiento
%fin requerimentos

%parametros dispositivos utilizados
Vds_max = 650;      %del MOSFET
Vf = 0.6;           %caida en el diodo en directa
Vbulk_min = 125; % minima tension a la que se escarga el Cbulk
%fin parametros dispositivos utilizados

%Bulk capacitor and Minimum Bulk voltage
Pout = Vout_nom * Iout_nom; 
Pin = Pout / rend;

Num = 2 * Pin * (asin(Vbulk_min / (sqrt(2)*Vin_min))/pi + 0.25);
Den = (2*Vin_min*Vin_min - Vbulk_min * Vbulk_min) * fline_min;
Cin = Num/Den;
%fin calculo Cbulk

% relacion de vueltas transformador
Vbulk_max = sqrt(2) * Vin_max;
Vreflected = 0.8*(Vds_max - 1.3*Vbulk_max);
Nps = floor(Vreflected / Vout_nom); % se elije el proximo valor menor
%falta calculo de devanado auxiliar

%tension en el diodo
Vdiode = Vbulk_max / Nps + Vout_nom;
%maximo Duty cicle
Num = Nps *(Vout_nom + Vf);
Den = Vbulk_min + Nps*(Vout_nom + Vf);
Dmax = Num / Den;

%9.2.2.3
%inductancia del primario
Num = Vbulk_min^2*((Nps*Vout_nom)/(Vbulk_min+Nps*Vout_nom))^2;
Den = 0.2*Pin*fsw;
Lp = Num / Den;
fprintf(1,'el valor de Lp es %f, que valor pone de Lm?\n',Lp);
Lm = input('Ingrese el valor de la variable:\n');

%calculo Ipk mosfet
Sum1 = (Pin*(Vbulk_min + Nps*Vout_nom)) / (Vbulk_min*Nps*Vout_nom);
Sum2 = (Vbulk_min*(Vbulk_min+Nps*Vout_nom))/(2*Lm*fsw*Nps*Vout_nom);
Ipk_mosfet = Sum1 + Sum2;
%calculo Irms MOSFET
Irms_mosfet = sqrt(((Dmax^3/3)*(Vbulk_min/(Lp*fsw))^2)-((Dmax*Dmax*Ipk_mosfet*Vbulk_min)/(Lp*fsw))+(Dmax*Ipk_mosfet*Ipk_mosfet));

Ipk_diode = Nps * Ipk_mosfet;
Iavg_diode = Iout_nom;

%9.2.2.4 Output capacitor
Num = Iout_nom*Nps*Vout_nom;
Den = (0.001)*Vout_nom*fsw*(Vbulk_min+Nps*Vout_nom); %el ripple se divide en 100 para pasarlo a porciento
Cout = Num / Den; %se toma el mayor estandar cercano

%9.2.2.5 red sensora de corriente
Rcs = 1 / Ipk_mosfet;   %ver compensacion para disminuir la perdida en esta R
%9.2.2.6
Rg = 10;
%9.2.2.7


%9.2.2.8
Cct=1e-9;
Rrt=1.72/(fsw*Cct);

%9.2.2.9


