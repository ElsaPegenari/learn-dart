// operator overriding

void main(List<String> arguments) {
  // int a = 10;
  // int b = 12;

  // String a = 'hello ';
  // String b = 'world';
  //
  // print(a+b);

  Hero a = Hero(11);
  Hero b = Hero(10);

  print((a+12).power);
  print(a==b);
  print(a>b);

}

class Hero{
  final int power;

  Hero(this.power);

  Hero operator + (var other){
    if(other is Hero){
      return Hero(power + other.power);
    }else if(other is int){
      return Hero(power + other);
    }else{
      return this;
    }
  }

  @override
  bool operator == (var other) {
    if(other is Hero){
      if(other.power == power){
        return true;
      }
    }
    return false;
  }

  bool operator > (var other) {
    if(other is Hero){
      if(power > other.power){
        return true;
      }
    }
    return false;
  }
}