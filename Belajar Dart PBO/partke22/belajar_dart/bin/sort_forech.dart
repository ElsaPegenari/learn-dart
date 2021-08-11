void main(List<String> arguments){
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55),

  ];

  persons.sort((p1, p2) {
    if(p1.roleWeight -p2.roleWeight != 0 ) {
      return p1.roleWeight -p2.roleWeight;
  }  else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.forEach((element){
    print(element.role + ' _ ' + element.age.toString());
  });

}
class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role){
      case 'Merchant' :
        return 1;
        break;
      case 'User':
        return 2;
        break;
      case 'Administrator' :
        return 3;
        break;
      default:
    }
  }
}