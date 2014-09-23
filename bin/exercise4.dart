import 'dart:math' as math; 

void main() {
  
  //Exercise 4.1
    int numbers = 10;
    String sequence = fibonacciIteration(numbers);
    print(sequence);
    
    print("___________"); 
    
  //Exercise 4.2
    int w = 800;
    int h = 600;   
    print(location(w, h));
    
    print("___________");
   
  //Exercise 4.3  
    int birthYear = 1993;
    int birthMonth = 06;
    int birthDay = 07;
    print("${age(birthDay, birthMonth, birthYear)}");
       
    print("___________");
    
  //Exercise 4.4
    int yearB = 5;
    double interestRate = 4.8;
    double initialInvestment = 1000.0;
    print("${calculateInterest(initialInvestment, interestRate, yearB)}");
    
    print("___________");
    
  //Exercise 4.5 
    int theNumber = 8;
    int max = 16;
    String theTable = table(theNumber, max);
    print(theTable);
  
}
//Exercise 4.1
String fibonacciIteration(int a) {
  int z = 0, x = 1, c = 1, v = 1;
  String result = '0' ' 1';
  while (v < a) {
    c = z + x;
    result = '$result $c';
    z = x; 
    x = c;
    v = v + 1;
  }
  return result;
}
//Exercise 4.2
String location(int w, int h){
 var angle = 45;
 var hypotenuse = 160;
 var radian = angle * (math.PI / 180);
 var xEnd = w/2 + hypotenuse*math.cos(radian);
 var yEnd = h/2 + hypotenuse*math.sin(radian);
 String Coordinates = 'Start line: (${(w/2).toStringAsFixed(2)}, ${(h/2).toStringAsFixed(2)}) \n'
 'End line: (${xEnd.toStringAsFixed(2)}, ${yEnd.toStringAsFixed(2)})';
 return Coordinates;
} 


//Exercise 4.3
String age(int birthDay, int birthMonth, int birthYear){
  var today = new DateTime.now();
      String date = today.toString();
      var dateB = date.split(' ');
      var separateDate = dateB[0];
      var separateElements = separateDate.split('-');
     
      var years = int.parse(separateElements[0]);
      var month = int.parse(separateElements[1]);
      var day = int.parse(separateElements[2]);
      
      int yearsN;
      int monthsN;
      int daysN;
      if (month < birthMonth) {
        yearsN = (years-birthYear) - 1;
        monthsN = (birthMonth-month);
        monthsN = (birthMonth - monthsN);
        
      } else {
        yearsN = (years-birthYear);
        monthsN = (month-birthMonth);
      }
      if (day < birthDay){      
        monthsN = monthsN - 1;
        daysN = (birthDay-day);
         if (monthsN == 0) {
           monthsN = 11;
         }
      } else {
        daysN = (day-birthDay);
      }
      
      String give = '$yearsN years  $monthsN months  $daysN days \n';
      return give;
}

//Exercise 4.4
String calculateInterest(double initialInvestment, double interestRate, int yearB) {
    double monthlyInterest = initialInvestment;
    String result = "";
    for(int a=1; a<yearB+1; a++){ 
    monthlyInterest = monthlyInterest + ((interestRate * monthlyInterest)/100);
    result="$result ${a} years = ${monthlyInterest}\n"; 
    }
    return result;
}

//Exercise 4.5
String table(int theNumber, int max) {
 String line = '';
 for (int v = 0; v < (max); v ++ ){
   var result = theNumber * v;
   var operation = '$theNumber x $v = $result';
   print(operation);
   
 }
 return line;
}

