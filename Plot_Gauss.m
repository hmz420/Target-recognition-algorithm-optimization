function [] = Plot_Gauss(input1, input2)
Index_Gauss_FG = input1;
Index_Gauss_BG = input2;
x1 = -0.5:0.01:0.5;
x2 = -2:0.01:5;
x3 = -0.2:0.001:0.2;
yf1 = normpdf(x2,Index_Gauss_FG(1,1),Index_Gauss_FG(1,2));
yb1 = normpdf(x2,Index_Gauss_BG(1,1),Index_Gauss_BG(1,2));
yf2 = normpdf(x1,Index_Gauss_FG(2,1),Index_Gauss_FG(2,2));
yb2 = normpdf(x1,Index_Gauss_BG(2,1),Index_Gauss_BG(2,2));
yf3 = normpdf(x1,Index_Gauss_FG(3,1),Index_Gauss_FG(3,2));
yb3 = normpdf(x1,Index_Gauss_BG(3,1),Index_Gauss_BG(3,2));
yf4 = normpdf(x1,Index_Gauss_FG(4,1),Index_Gauss_FG(4,2));
yb4 = normpdf(x1,Index_Gauss_BG(4,1),Index_Gauss_BG(4,2));
yf5 = normpdf(x1,Index_Gauss_FG(5,1),Index_Gauss_FG(5,2));
yb5 = normpdf(x1,Index_Gauss_BG(5,1),Index_Gauss_BG(5,2));
yf6 = normpdf(x1,Index_Gauss_FG(6,1),Index_Gauss_FG(6,2));
yb6 = normpdf(x1,Index_Gauss_BG(6,1),Index_Gauss_BG(6,2));
yf7 = normpdf(x1,Index_Gauss_FG(7,1),Index_Gauss_FG(7,2));
yb7 = normpdf(x1,Index_Gauss_BG(7,1),Index_Gauss_BG(7,2));
yf8 = normpdf(x1,Index_Gauss_FG(8,1),Index_Gauss_FG(8,2));
yb8 = normpdf(x1,Index_Gauss_BG(8,1),Index_Gauss_BG(8,2));
yf9 = normpdf(x1,Index_Gauss_FG(9,1),Index_Gauss_FG(9,2));
yb9 = normpdf(x1,Index_Gauss_BG(9,1),Index_Gauss_BG(9,2));
yf10 = normpdf(x1,Index_Gauss_FG(10,1),Index_Gauss_FG(10,2));
yb10 = normpdf(x1,Index_Gauss_BG(10,1),Index_Gauss_BG(10,2));
yf11 = normpdf(x1,Index_Gauss_FG(11,1),Index_Gauss_FG(11,2));
yb11 = normpdf(x1,Index_Gauss_BG(11,1),Index_Gauss_BG(11,2));
yf12 = normpdf(x1,Index_Gauss_FG(12,1),Index_Gauss_FG(12,2));
yb12 = normpdf(x1,Index_Gauss_BG(12,1),Index_Gauss_BG(12,2));
yf13 = normpdf(x1,Index_Gauss_FG(13,1),Index_Gauss_FG(13,2));
yb13 = normpdf(x1,Index_Gauss_BG(13,1),Index_Gauss_BG(13,2));
yf14 = normpdf(x1,Index_Gauss_FG(14,1),Index_Gauss_FG(14,2));
yb14 = normpdf(x1,Index_Gauss_BG(14,1),Index_Gauss_BG(14,2));
yf15 = normpdf(x1,Index_Gauss_FG(15,1),Index_Gauss_FG(15,2));
yb15 = normpdf(x1,Index_Gauss_BG(15,1),Index_Gauss_BG(15,2));
yf16 = normpdf(x1,Index_Gauss_FG(16,1),Index_Gauss_FG(16,2));
yb16 = normpdf(x1,Index_Gauss_BG(16,1),Index_Gauss_BG(16,2));
yf17 = normpdf(x3,Index_Gauss_FG(17,1),Index_Gauss_FG(17,2));
yb17 = normpdf(x3,Index_Gauss_BG(17,1),Index_Gauss_BG(17,2));
yf18 = normpdf(x3,Index_Gauss_FG(18,1),Index_Gauss_FG(18,2));
yb18 = normpdf(x3,Index_Gauss_BG(18,1),Index_Gauss_BG(18,2));
yf19 = normpdf(x3,Index_Gauss_FG(19,1),Index_Gauss_FG(19,2));
yb19 = normpdf(x3,Index_Gauss_BG(19,1),Index_Gauss_BG(19,2));
yf20 = normpdf(x3,Index_Gauss_FG(20,1),Index_Gauss_FG(20,2));
yb20 = normpdf(x3,Index_Gauss_BG(20,1),Index_Gauss_BG(20,2));
yf21 = normpdf(x3,Index_Gauss_FG(21,1),Index_Gauss_FG(21,2));
yb21 = normpdf(x3,Index_Gauss_BG(21,1),Index_Gauss_BG(21,2));
yf22 = normpdf(x3,Index_Gauss_FG(22,1),Index_Gauss_FG(22,2));
yb22 = normpdf(x3,Index_Gauss_BG(22,1),Index_Gauss_BG(22,2));
yf23 = normpdf(x3,Index_Gauss_FG(23,1),Index_Gauss_FG(23,2));
yb23 = normpdf(x3,Index_Gauss_BG(23,1),Index_Gauss_BG(23,2));
yf24 = normpdf(x3,Index_Gauss_FG(24,1),Index_Gauss_FG(24,2));
yb24 = normpdf(x3,Index_Gauss_BG(24,1),Index_Gauss_BG(24,2));
yf25 = normpdf(x3,Index_Gauss_FG(25,1),Index_Gauss_FG(25,2));
yb25 = normpdf(x3,Index_Gauss_BG(25,1),Index_Gauss_BG(25,2));
yf26 = normpdf(x3,Index_Gauss_FG(26,1),Index_Gauss_FG(26,2));
yb26 = normpdf(x3,Index_Gauss_BG(26,1),Index_Gauss_BG(26,2));
yf27 = normpdf(x3,Index_Gauss_FG(27,1),Index_Gauss_FG(27,2));
yb27 = normpdf(x3,Index_Gauss_BG(27,1),Index_Gauss_BG(27,2));
yf28 = normpdf(x3,Index_Gauss_FG(28,1),Index_Gauss_FG(28,2));
yb28 = normpdf(x3,Index_Gauss_BG(28,1),Index_Gauss_BG(28,2));
yf29 = normpdf(x3,Index_Gauss_FG(29,1),Index_Gauss_FG(29,2));
yb29 = normpdf(x3,Index_Gauss_BG(29,1),Index_Gauss_BG(29,2));
yf30 = normpdf(x3,Index_Gauss_FG(30,1),Index_Gauss_FG(30,2));
yb30 = normpdf(x3,Index_Gauss_BG(30,1),Index_Gauss_BG(30,2));
yf31 = normpdf(x3,Index_Gauss_FG(31,1),Index_Gauss_FG(31,2));
yb31 = normpdf(x3,Index_Gauss_BG(31,1),Index_Gauss_BG(31,2));
yf32 = normpdf(x3,Index_Gauss_FG(32,1),Index_Gauss_FG(32,2));
yb32 = normpdf(x3,Index_Gauss_BG(32,1),Index_Gauss_BG(32,2));

figure(1)
subplot(8,4,1)
plot(x2,yf1)
hold on
plot(x2,yb1)

subplot(8,4,2)
plot(x1,yf2)
hold on
plot(x1,yb2)

subplot(8,4,3)
plot(x1,yf3)
hold on
plot(x1,yb3)

subplot(8,4,4)
plot(x1,yf4)
hold on
plot(x1,yb4)

subplot(8,4,5)
plot(x1,yf5)
hold on
plot(x1,yb5)

subplot(8,4,6)
plot(x1,yf6)
hold on
plot(x1,yb6)

subplot(8,4,7)
plot(x1,yf7)
hold on
plot(x1,yb7)

subplot(8,4,8)
plot(x1,yf8)
hold on
plot(x1,yb8)

subplot(8,4,9)
plot(x1,yf9)
hold on
plot(x1,yb9)

subplot(8,4,10)
plot(x1,yf10)
hold on
plot(x1,yb10)

subplot(8,4,11)
plot(x1,yf11)
hold on
plot(x1,yb11)

subplot(8,4,12)
plot(x1,yf12)
hold on
plot(x1,yb12)

subplot(8,4,13)
plot(x1,yf13)
hold on
plot(x1,yb13)

subplot(8,4,14)
plot(x1,yf14)
hold on
plot(x1,yb14)

subplot(8,4,15)
plot(x1,yf15)
hold on
plot(x1,yb15)

subplot(8,4,16)
plot(x1,yf16)
hold on
plot(x1,yb16)

subplot(8,4,17)
plot(x3,yf17)
hold on
plot(x3,yb17)

subplot(8,4,18)
plot(x3,yf18)
hold on
plot(x3,yb18)

subplot(8,4,19)
plot(x3,yf19)
hold on
plot(x3,yb19)

subplot(8,4,20)
plot(x3,yf20)
hold on
plot(x3,yb20)

subplot(8,4,21)
plot(x3,yf21)
hold on
plot(x3,yb21)

subplot(8,4,22)
plot(x3,yf22)
hold on
plot(x3,yb22)

subplot(8,4,23)
plot(x3,yf23)
hold on
plot(x3,yb23)

subplot(8,4,24)
plot(x3,yf24)
hold on
plot(x3,yb24)

subplot(8,4,25)
plot(x3,yf25)
hold on
plot(x3,yb25)

subplot(8,4,26)
plot(x3,yf26)
hold on
plot(x3,yb26)

subplot(8,4,27)
plot(x3,yf27)
hold on
plot(x3,yb27)

subplot(8,4,28)
plot(x3,yf28)
hold on
plot(x3,yb28)

subplot(8,4,29)
plot(x3,yf29)
hold on
plot(x3,yb29)

subplot(8,4,30)
plot(x3,yf30)
hold on
plot(x3,yb30)

subplot(8,4,31)
plot(x3,yf31)
hold on
plot(x3,yb31)

subplot(8,4,32)
plot(x3,yf32)
hold on
plot(x3,yb32)


x4 = -0.1:0.001:0.1;
yyf1 = normpdf(x4,Index_Gauss_FG(33,1),Index_Gauss_FG(33,2));
yyb1 = normpdf(x4,Index_Gauss_BG(33,1),Index_Gauss_BG(33,2));
yyf2 = normpdf(x4,Index_Gauss_FG(34,1),Index_Gauss_FG(34,2));
yyb2 = normpdf(x4,Index_Gauss_BG(34,1),Index_Gauss_BG(34,2));
yyf3 = normpdf(x4,Index_Gauss_FG(35,1),Index_Gauss_FG(35,2));
yyb3 = normpdf(x4,Index_Gauss_BG(35,1),Index_Gauss_BG(35,2));
yyf4 = normpdf(x4,Index_Gauss_FG(36,1),Index_Gauss_FG(36,2));
yyb4 = normpdf(x4,Index_Gauss_BG(36,1),Index_Gauss_BG(36,2));
yyf5 = normpdf(x4,Index_Gauss_FG(37,1),Index_Gauss_FG(37,2));
yyb5 = normpdf(x4,Index_Gauss_BG(37,1),Index_Gauss_BG(37,2));
yyf6 = normpdf(x4,Index_Gauss_FG(38,1),Index_Gauss_FG(38,2));
yyb6 = normpdf(x4,Index_Gauss_BG(38,1),Index_Gauss_BG(38,2));
yyf7 = normpdf(x4,Index_Gauss_FG(39,1),Index_Gauss_FG(39,2));
yyb7 = normpdf(x4,Index_Gauss_BG(39,1),Index_Gauss_BG(39,2));
yyf8 = normpdf(x4,Index_Gauss_FG(40,1),Index_Gauss_FG(40,2));
yyb8 = normpdf(x4,Index_Gauss_BG(40,1),Index_Gauss_BG(40,2));
yyf9 = normpdf(x4,Index_Gauss_FG(41,1),Index_Gauss_FG(41,2));
yyb9 = normpdf(x4,Index_Gauss_BG(41,1),Index_Gauss_BG(41,2));
yyf10 = normpdf(x4,Index_Gauss_FG(42,1),Index_Gauss_FG(42,2));
yyb10 = normpdf(x4,Index_Gauss_BG(42,1),Index_Gauss_BG(42,2));
yyf11 = normpdf(x4,Index_Gauss_FG(43,1),Index_Gauss_FG(43,2));
yyb11 = normpdf(x4,Index_Gauss_BG(43,1),Index_Gauss_BG(43,2));
yyf12 = normpdf(x4,Index_Gauss_FG(44,1),Index_Gauss_FG(44,2));
yyb12 = normpdf(x4,Index_Gauss_BG(44,1),Index_Gauss_BG(44,2));
yyf13 = normpdf(x4,Index_Gauss_FG(45,1),Index_Gauss_FG(45,2));
yyb13 = normpdf(x4,Index_Gauss_BG(45,1),Index_Gauss_BG(45,2));
yyf14 = normpdf(x4,Index_Gauss_FG(46,1),Index_Gauss_FG(46,2));
yyb14 = normpdf(x4,Index_Gauss_BG(46,1),Index_Gauss_BG(46,2));
yyf15 = normpdf(x4,Index_Gauss_FG(47,1),Index_Gauss_FG(47,2));
yyb15 = normpdf(x4,Index_Gauss_BG(47,1),Index_Gauss_BG(47,2));
yyf16 = normpdf(x4,Index_Gauss_FG(48,1),Index_Gauss_FG(48,2));
yyb16 = normpdf(x4,Index_Gauss_BG(48,1),Index_Gauss_BG(48,2));
yyf17 = normpdf(x4,Index_Gauss_FG(49,1),Index_Gauss_FG(49,2));
yyb17 = normpdf(x4,Index_Gauss_BG(49,1),Index_Gauss_BG(49,2));
yyf18 = normpdf(x4,Index_Gauss_FG(50,1),Index_Gauss_FG(50,2));
yyb18 = normpdf(x4,Index_Gauss_BG(50,1),Index_Gauss_BG(50,2));
yyf19 = normpdf(x4,Index_Gauss_FG(51,1),Index_Gauss_FG(51,2));
yyb19 = normpdf(x4,Index_Gauss_BG(51,1),Index_Gauss_BG(51,2));
yyf20 = normpdf(x4,Index_Gauss_FG(52,1),Index_Gauss_FG(52,2));
yyb20 = normpdf(x4,Index_Gauss_BG(52,1),Index_Gauss_BG(52,2));
yyf21 = normpdf(x4,Index_Gauss_FG(53,1),Index_Gauss_FG(53,2));
yyb21 = normpdf(x4,Index_Gauss_BG(53,1),Index_Gauss_BG(53,2));
yyf22 = normpdf(x4,Index_Gauss_FG(54,1),Index_Gauss_FG(54,2));
yyb22 = normpdf(x4,Index_Gauss_BG(54,1),Index_Gauss_BG(54,2));
yyf23 = normpdf(x4,Index_Gauss_FG(55,1),Index_Gauss_FG(55,2));
yyb23 = normpdf(x4,Index_Gauss_BG(55,1),Index_Gauss_BG(55,2));
yyf24 = normpdf(x4,Index_Gauss_FG(56,1),Index_Gauss_FG(56,2));
yyb24 = normpdf(x4,Index_Gauss_BG(56,1),Index_Gauss_BG(56,2));
yyf25 = normpdf(x4,Index_Gauss_FG(57,1),Index_Gauss_FG(57,2));
yyb25 = normpdf(x4,Index_Gauss_BG(57,1),Index_Gauss_BG(57,2));
yyf26 = normpdf(x4,Index_Gauss_FG(58,1),Index_Gauss_FG(58,2));
yyb26 = normpdf(x4,Index_Gauss_BG(58,1),Index_Gauss_BG(58,2));
yyf27 = normpdf(x4,Index_Gauss_FG(59,1),Index_Gauss_FG(59,2));
yyb27 = normpdf(x4,Index_Gauss_BG(59,1),Index_Gauss_BG(59,2));
yyf28 = normpdf(x4,Index_Gauss_FG(60,1),Index_Gauss_FG(60,2));
yyb28 = normpdf(x4,Index_Gauss_BG(60,1),Index_Gauss_BG(60,2));
yyf29 = normpdf(x4,Index_Gauss_FG(61,1),Index_Gauss_FG(61,2));
yyb29 = normpdf(x4,Index_Gauss_BG(61,1),Index_Gauss_BG(61,2));
yyf30 = normpdf(x4,Index_Gauss_FG(62,1),Index_Gauss_FG(62,2));
yyb30 = normpdf(x4,Index_Gauss_BG(62,1),Index_Gauss_BG(62,2));
yyf31 = normpdf(x4,Index_Gauss_FG(63,1),Index_Gauss_FG(63,2));
yyb31 = normpdf(x4,Index_Gauss_BG(63,1),Index_Gauss_BG(63,2));
yyf32 = normpdf(x4,Index_Gauss_FG(64,1),Index_Gauss_FG(64,2));
yyb32 = normpdf(x4,Index_Gauss_BG(64,1),Index_Gauss_BG(64,2));

figure(2)
subplot(8,4,1)
plot(x4,yyf1)
hold on
plot(x4,yyb1)

subplot(8,4,2)
plot(x4,yyf2)
hold on
plot(x4,yyb2)

subplot(8,4,3)
plot(x4,yyf3)
hold on
plot(x4,yyb3)

subplot(8,4,4)
plot(x4,yyf4)
hold on
plot(x4,yyb4)

subplot(8,4,5)
plot(x4,yyf5)
hold on
plot(x4,yyb5)

subplot(8,4,6)
plot(x4,yyf6)
hold on
plot(x4,yyb6)

subplot(8,4,7)
plot(x4,yyf7)
hold on
plot(x4,yyb7)

subplot(8,4,8)
plot(x4,yyf8)
hold on
plot(x4,yyb8)

subplot(8,4,9)
plot(x4,yyf9)
hold on
plot(x4,yyb9)

subplot(8,4,10)
plot(x4,yyf10)
hold on
plot(x4,yyb10)

subplot(8,4,11)
plot(x4,yyf11)
hold on
plot(x4,yyb11)

subplot(8,4,12)
plot(x4,yyf12)
hold on
plot(x4,yyb12)

subplot(8,4,13)
plot(x4,yyf13)
hold on
plot(x4,yyb13)

subplot(8,4,14)
plot(x4,yyf14)
hold on
plot(x4,yyb14)

subplot(8,4,15)
plot(x4,yyf15)
hold on
plot(x4,yyb15)

subplot(8,4,16)
plot(x4,yyf16)
hold on
plot(x4,yyb16)

subplot(8,4,17)
plot(x4,yyf17)
hold on
plot(x4,yyb17)

subplot(8,4,18)
plot(x4,yyf18)
hold on
plot(x4,yyb18)

subplot(8,4,19)
plot(x4,yyf19)
hold on
plot(x4,yyb19)

subplot(8,4,20)
plot(x4,yyf20)
hold on
plot(x4,yyb20)

subplot(8,4,21)
plot(x4,yyf21)
hold on
plot(x4,yyb21)

subplot(8,4,22)
plot(x4,yyf22)
hold on
plot(x4,yyb22)

subplot(8,4,23)
plot(x4,yyf23)
hold on
plot(x4,yyb23)

subplot(8,4,24)
plot(x4,yyf24)
hold on
plot(x4,yyb24)

subplot(8,4,25)
plot(x4,yyf25)
hold on
plot(x4,yyb25)

subplot(8,4,26)
plot(x4,yyf26)
hold on
plot(x4,yyb26)

subplot(8,4,27)
plot(x4,yyf27)
hold on
plot(x4,yyb27)

subplot(8,4,28)
plot(x4,yyf28)
hold on
plot(x4,yyb28)

subplot(8,4,29)
plot(x4,yyf29)
hold on
plot(x4,yyb29)

subplot(8,4,30)
plot(x4,yyf30)
hold on
plot(x4,yyb30)

subplot(8,4,31)
plot(x4,yyf31)
hold on
plot(x4,yyb31)

subplot(8,4,32)
plot(x4,yyf32)
hold on
plot(x4,yyb32)




figure(5)
subplot(2,4,1)
plot(x2,yf1)
hold on
plot(x2,yb1)

subplot(2,4,2)
plot(x3,yf18)
hold on
plot(x3,yb18)

subplot(2,4,3)
plot(x3,yf19)
hold on
plot(x3,yb19)

subplot(2,4,4)
plot(x3,yf21)
hold on
plot(x3,yb21)

subplot(2,4,5)
plot(x3,yf25)
hold on
plot(x3,yb25)

subplot(2,4,6)
plot(x3,yf26)
hold on
plot(x3,yb26)

subplot(2,4,7)
plot(x4,yyf1)
hold on
plot(x4,yyb1)

subplot(2,4,8)
plot(x4,yyf8)
hold on
plot(x4,yyb8)





figure(6)
subplot(2,4,1)
plot(x4,yyf18)
hold on
plot(x4,yyb18)

subplot(2,4,2)
plot(x4,yyf26)
hold on
plot(x4,yyb26)

subplot(2,4,3)
plot(x4,yyf27)
hold on
plot(x4,yyb27)

subplot(2,4,4)
plot(x4,yyf28)
hold on
plot(x4,yyb28)

subplot(2,4,5)
plot(x4,yyf29)
hold on
plot(x4,yyb29)

subplot(2,4,6)
plot(x4,yyf30)
hold on
plot(x4,yyb30)

subplot(2,4,7)
plot(x4,yyf31)
hold on
plot(x4,yyb31)

subplot(2,4,8)
plot(x4,yyf32)
hold on
plot(x4,yyb32)
end


