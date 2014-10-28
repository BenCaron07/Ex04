import 'dart:math' as math; 

void main() {
  
  //Exercise 4.1
    print("Exercise 4.1");
    String result = Fibonacci(11);
    print(result);
    print("___________"); 
    
  //Exercise 4.2
    print("Exercise 4.2");
    print (location(800, 600, 160, 45)) ;
    print("___________");
   
  //Exercise 4.3  
    print("Exercise 4.3");
    print (Calculatetime(1993, 06, 07) ) ;
    print("___________");
    
  //Exercise 4.4
    print("Exercise 4.4");
    Compound_interest(1000, 0.048, 5);
    print("___________");
    
  //Exercise 4.5 
    print("Exercise 4.5");
      int number_a = 8;
      int number_b = 16;
      String timestable = Table8(number_a, number_b);
      print('$timestable\n');
    }
         

//Exercise 4.1
String Fibonacci(int c) {
  int a = 0;
  int b = 1;
  String fibonacciList;
  
  if (c >= 1) {
    fibonacciList = "0";
  }
  if (c >= 2) {
    fibonacciList = "$fibonacciList 1";
  }
  
  if (c >= 3) {
   
    for(int calculation = 2; calculation < c; calculation++) {
      int total = a + b;
      fibonacciList = "$fibonacciList $total";
      a = b;
      b = total;
    }
  }
  
  return fibonacciList;
}

//Exercise 4.2
num convertRadians (num angle) {
  return (angle / 180 * math.PI) ; 
}

String location(num a, num b, num l, num angle) {
  a /= 2 ;
  b /= 2 ;
  angle = convertRadians(angle) ;
  
  var beginX = 800/2;
  var beginY = 600/2;

  var pX = ((l * math.cos(angle)) + a).toStringAsFixed(2) ;
  var pY = ((l * math.sin(angle)) + b).toStringAsFixed(2) ;
  
  return 'Start line: x= $beginX ,  y= $beginY \nEnd line: x= $pX , y= $pY';
}


//Exercise 4.3
Calculatetime(int years, int months, int days) {
  var a = new DateTime.now() ;
  var b = new DateTime(a.year, a.month, a.day, 12, 0, 0, 0) ; 
  var birthday = new DateTime(years, months, days, 12, 0, 0, 0) ; 
  var difference = b.difference(birthday) ; 
  var c = (difference.inDays) ;
  var numYears = (c / 365.2425).floor() ; 
  var numMonths = (((c / 365.2425) - (numYears)) * 12).floor() ; // Average days per year: 365 + 1/4 - 1/100 + 1/400 = 365.2425 days in one year on average.
  var numDays = (((((c / 365.2425) - (numYears)) * 12) - numMonths) * 30.436875).floor() ; // Average days per month: 365.2425 days / 12 months = 30.436875 days per month on average.
  
  
  
  return 'There is $numYears years, $numMonths months and $numDays days between $b at midnight and my birthday at midnight.' ;
}


//Exercise 4.4
Compound_interest(num capital, num interest, num duration) {
 var total = 0;
 var result = [];
 for(var i = 1 ; i <= duration ; i++){
   total = capital * interest;
   capital = capital + total;
   print(capital);
   result.add(total);
 }
 return result;
}

//Exercise 4.5
Table8(a, b) {
  var result = "\n";
  var r = a;
  for(var i = 1; i < b + 1; i++){
    var x = a * i;
    result = '$result $i. 8 x $i = $x. \n';
  }
  return result;
}

