function [a] = getvector(str)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
str=split(str);
str = lower(str);
a=[];
for i=1:48
    a=[a 0];
end

A=[];
A = textread('words.txt','%s');
string(A(1));
for i=1:length(str)
    if str(i)=="make"
        a(1)=1;
    elseif str(i)=="address"
        a(2)=1;
    elseif str(i)=="all"
        a(3)=1;
    elseif str(i)=="3d"
        a(4)=1;
    elseif str(i)=="our"
        a(5)=1;
    elseif str(i)=="over"
        a(6)=1;
    elseif str(i)=="remove"
        a(7)=1;
    elseif str(i)=="internet"
        a(8)=1;
    elseif str(i)=="order"
        a(9)=1;
    elseif str(i)=="mail"
        a(10)=1;
    elseif str(i)=="receive"
        a(11)=1;
    elseif str(i)=="will"
        a(12)=1;
    elseif str(i)=="people"
        a(13)=1;
    elseif str(i)=="report"
        a(14)=1;
    elseif str(i)=="addresses"
        a(15)=1;
    elseif str(i)=="free"
        a(16)=1;
    elseif str(i)=="business"
        a(17)=1;
    elseif str(i)=="email"
        a(18)=1;
    elseif str(i)=="you"
        a(19)=1;
    elseif str(i)=="credit"
        a(20)=1;
    elseif str(i)=="your"
        a(21)=1;
    elseif str(i)=="font"
        a(22)=1;
    elseif str(i)=="000"
        a(23)=1;
    elseif str(i)=="money"
        a(24)=1;
    elseif str(i)=="hp"
        a(25)=1;
    elseif str(i)=="hpl"
        a(26)=1;
    elseif str(i)=="george"
        a(27)=1;
    elseif str(i)=="650"
        a(28)=1;
    elseif str(i)=="lab"
        a(29)=1;
    elseif str(i)=="labs"
        a(30)=1;
    elseif str(i)=="telnet"
        a(31)=1;
    elseif str(i)=="857"
        a(32)=1;
    elseif str(i)=="data"
        a(33)=1;
    elseif str(i)=="415"
        a(34)=1;
    elseif str(i)=="entry"
        a(35)=1;
    elseif str(i)=="technology"
        a(36)=1;
    elseif str(i)=="1999"
        a(37)=1;
    elseif str(i)=="parts"
        a(38)=1;
    elseif str(i)=="pm"
        a(39)=1;
    elseif str(i)=="direct"
        a(40)=1;
    elseif str(i)=="cs"
        a(41)=1;
    elseif str(i)=="meeting"
        a(42)=1;
    elseif str(i)=="original"
        a(43)=1;
    elseif str(i)=="project"
        a(44)=1;
    elseif str(i)=="re"
        a(45)=1;
    elseif str(i)=="edu"
        a(46)=1;
    elseif str(i)=="table"
        a(47)=1;
    elseif str(i)=="conference"
        a(48)=1;
    end
    
end
end

