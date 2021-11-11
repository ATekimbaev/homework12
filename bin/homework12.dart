void main() {
  var country = Country('cont', 'Wakanda');
  print(country.printPlaceClimat());

  var car = Car(199, 'green', 'bmw', 1000);
  print(car.printAll());

  var student = Student();
  student.name = 'Abai';
  student.surname = 'Tekimbaev';
  student.year = 2016;
  print(student.getCours());
  print(student.getFullName());
}

class Country {
  String? name;
  String? climat;

  Country(this.name, this.climat);
  printPlaceClimat() {
    return ('$name, $climat');
  }
}

class Car {
  int? power;
  String? color;
  String? name;
  int? price;

  Car(this.power, this.color, this.name, this.price);

  printAll() {
    return ('power is $power, color is $color, name is $name, price is $price');
  }
}

class User {
  String? name;
  String? surname;

  getFullName() {
    return ('name is $name, sure name is $surname');
  }
}

class Student extends User {
  var now = DateTime.now();

  dynamic? year;

  getCours() {
    var result = now.year - year;
    return 'cours is $result';
  }
}
