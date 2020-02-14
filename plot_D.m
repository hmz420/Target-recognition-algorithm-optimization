function plot_D(alpha_data,result_D)
%PLOT_D 
figure(1)
semilogx(alpha_data,result_D(1,:),'LineStyle','--','Color','r','Marker','o')
hold on
semilogx(alpha_data,result_D(2,:),'LineStyle','--','Color','b','Marker','o')
hold on
semilogx(alpha_data,result_D(3,:),'Color','k','Marker','o')
legend('BPE','MAP','ML')
grid on

figure(2)
semilogx(alpha_data,result_D(4,:),'LineStyle','--','Color','r','Marker','o')
hold on
semilogx(alpha_data,result_D(5,:),'LineStyle','--','Color','b','Marker','o')
hold on
semilogx(alpha_data,result_D(6,:),'Color','k','Marker','o')
legend('BPE','MAP','ML')
grid on

figure(3)
semilogx(alpha_data,result_D(7,:),'LineStyle','--','Color','r','Marker','o')
hold on
semilogx(alpha_data,result_D(8,:),'LineStyle','--','Color','b','Marker','o')
hold on
semilogx(alpha_data,result_D(9,:),'Color','k','Marker','o')
legend('BPE','MAP','ML')
grid on

figure(4)
semilogx(alpha_data,result_D(10,:),'LineStyle','--','Color','r','Marker','o')
hold on
semilogx(alpha_data,result_D(11,:),'LineStyle','--','Color','b','Marker','o')
hold on
semilogx(alpha_data,result_D(12,:),'Color','k','Marker','o')
legend('BPE','MAP','ML')
grid on
end

