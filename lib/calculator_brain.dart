class CalculatorBrain{
  CalculatorBrain({this.var1,this.var2,this.operator});
  final double var1;
  final double var2;
  final String operator;
  double result;
  double getResult(){
    switch(operator){
      case '+' : return var1 + var2;
      case '/' : return var1 / var2;
      case '*' : return var1 * var2;
      case '-' : return var1 - var2;
      default : return 0;
    }
  }

}