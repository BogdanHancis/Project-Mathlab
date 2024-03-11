clc

Name= input('Enter Your Name','s');
System=menu('Enter the system to proceed','Imperial System','SI Standard System');
if System==1
    Weight= input('Enter Your Weight in Pounds(lbs)');
    Height= input('Enter Your Height in Inches(inch)');
    BMI =((Weight/(Height*Height))*703);
else
     Weight= input('Enter Your Weight in Kilograms(Kg)');
    Height= input('Enter Your Height in Meters(m)');
    BMI =(Weight/(Height*Height));
end
if BMI<18.5
    Result='Underweight';
elseif BMI>=18.5 && BMI<=24.9
    Result='Normal';
elseif BMI>=25 && BMI<=29.9
    Result='Overweight';
else
    Result='Obese';
end
fprintf('%s your BMI value is %f which indicates that you are %s',Name,BMI,Result)
clear all
