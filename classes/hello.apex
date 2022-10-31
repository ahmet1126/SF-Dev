// Escape Chars

System.debug('My friend\'s name is Latif!'); // escape char (alt + ?)
System.debug('My friend \'s name \nis Burak!'); //new line
System.debug('My friend \'s name \nis \t\t Semih!'); //tab
System.debug('My friend \'s name \nis Tayfun!\\'); // back slash


// Kills the iteration and force exit from the loop based on condition
Integer num = 1;
while (num < 5){
    if (num == 3) {
        Break;
    }else{
        System.debug('Number is '+ num);
        num++;
    }
}


// Skips executing related iterations
for (Integer num = 1; num <= 5; num++){
    if (num == 3){
        Continue;
    }
    else{
        System.debug('Number is '+num);
    }
}


Dog myDog1 = new Dog ();
myDog1.dogName = 'Mouse';
myDog1.dogAge = 5;
myDog1.displayDate();

public class Math {
    public static abs(){
        return 
    }
}
public class Math {
    public static abs(){
        return 
    }
}

System.debug(Calculations.calculatAreaofCircle(4.2));
