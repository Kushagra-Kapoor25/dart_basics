/// Library for input and output operations
import 'dart:io';
class Person {
  var name;
  final int age;
  static const String gender = "male";
  
  // Default Constructor
  Person(this.name, this.age);
  void showOutput() => { print("$name and $age") };

  // Named Constructor
  Person.guest(this.name,[this.age =30]);
}

class SomeNumber {
  int num = 10;
}

/// Enumerations
enum AnimalType {
  dog, bunny, fish;
}

void iLoveAnimal(AnimalType animal) {
  switch (animal) {
    case AnimalType.dog:
      print("I love ${animal.name}");
      break;
    case AnimalType.bunny:
      print("${animal.name} is cute.");
      break;
    case AnimalType.fish:
      print("${animal.name} is an interesting animal");
      break; 
  }
}
void main() {
  //Type inference
  var firstName = "Kushagra";

  //Statically typed
  String lastName = "Kapoor";

  print(firstName + " " + lastName);

  stdout.writeln("What is your name?");
  var name = stdin.readLineSync();
  print("My name is $name.");

  /// Data Types:
  /// int, double, String, bool, dynamic
  
  int amount1 = 100;
  var amount2 = 200;

  print('Amount1: $amount1 | Amount2: $amount2');
  
  dynamic weakVariable = true;
  print("Weak Variable: $weakVariable");

  weakVariable = "Something Just Like This";
  print(weakVariable);

  var s1 = '''This is a multiline comment
This is the way to do it.''';
  print(s1);

  var one = int.parse("1");
  assert(one == 1);

  var onePointOne = double.parse("1.1");
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == 3.14);

  // Null Aware Operators
  var n;
  int? number = n;
  /// Safe Navigation Operator -> ?.
  /// Default Null Aware Operator -> ??

  number = n?.num ?? 10;

  print(number);
  int? x;
  /// Fallback Assignment Operator -> ??=
  x ??= 20;
  print(x);

  ///if else-if else
  int randomNumber = 29;
  if (randomNumber % 2 == 0) {
    print("Even");
  } 
  else if (randomNumber % 3 == 0) {
    print("Odd");
  }
  else {
    print("Confused");
  }

  /// Switch Case
  int foo = 0;
  switch (foo) {
    case 0:
      print("even");
      break;
    
    case 1:
      print("odd");
      break;
    
    default: 
      print("confused");
  }

  /// Loops
  
  // Standard For Loop
  for (var i=1; i<=10; i++) {
    print(i);
  }

  // For in Loop
  var numbers = [1,2,3,4,5];
  for (var n in numbers) {
    print(n);
  }

  // For-each loop - Higher Order Functions
  // Anonymous Function
  numbers.forEach((n) => print(n));

  // While Loop
   int bar = 5;
   while (bar > 0) {
    print(bar);
    bar -= 1;
   }

  // Do-while
  do {
    print(bar);
    bar += 1;
  } while (bar < 5);

  /// Collection Types in Dart
  /// List, Set, Map
  
  const List <Object> items = ["Kushagra", 22, 177.89, 75];
  for (var data in items) {
    print(data);
  }

  // Spread Operator
  var list2 = [...items];
  list2.forEach((element) => print(element));

  // Set
  Set <String> halogens = {"Chlorine", "Fluorine"};
  for (var halogen in halogens) {
    print(halogen);
  }

  // Map
  Map <String, Object> data = {
    "name" : "Kushagra",
    "age" : 22,
    "weight" : 79,
    "height" : 179.78
  };

  print(data["name"]);

  showOutput(square(2));
  showOutput(square(2.23));

  print(arrSquare(4.6));
  var person1 = Person("kushagra", 23);
  person1.showOutput();

  var person2 = Person.guest("Someone");
  person2.showOutput();
  print(Person.gender);

  iLoveAnimal(AnimalType.dog);
}

 /// Functions
  dynamic square(var num) {
    return num * num;
  }

  void showOutput(var msg) {
    print(msg);
  }

  // Arrow Functions
  dynamic arrSquare(var num) => num * num;

 
