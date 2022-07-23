b = [1 0.1]; a = [1 0.2 9.01];
Ts = 0.5; fs = 1/ Ts ;
Wa = linspace (0 , 8 , 64) ;
Ha = freqs (b ,a , Wa ) ;
plot ( Wa / pi ,20* log10 ( abs ( Ha ) ) , ' LineWidth ' ,2) ; hold on ;
[ bz , az ]= impinvar (b ,a , fs ) ; [ Hz , Wz ] = freqz ( bz , az ,512) ;
plot ( Wz / pi ,20* log10 ( abs ( Hz ) ) , 'r - - ') ;
xlabel ( ' Frequency ( Hz ) ') , ylabel ( ' Magnitude ( dB ) ') ;
title ( ' Magnitude Response Comparison ') ;
legend ( ' Analog Filter ' , ' Digital Filter ') 