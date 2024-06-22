import 'dart:core';

class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to track the number of Car objects created
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Method to add miles driven
  void drive(double miles) {
    milesDriven += miles;
  }

  // Getter methods
  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  // Creating three Car objects with different brands, models, and years
  Car car1 = Car('Toyota', 'Corolla', 2015, 50000.0);
  Car car2 = Car('Honda', 'Civic', 2018, 30000.0);
  Car car3 = Car('Ford', 'Mustang', 2020, 15000.0);

  // Driving each car a different number of miles
  car1.drive(150.0);
  car2.drive(200.0);
  car3.drive(100.0);

  // Printing out the brand, model, year, miles driven, and age of each car
  print('Car 1:');
  print('Brand: ${car1.getBrand()}');
  print('Model: ${car1.getModel()}');
  print('Year: ${car1.getYear()}');
  print('Miles Driven: ${car1.getMilesDriven()}');
  print('Age: ${car1.getAge()}');
  print('');

  print('Car 2:');
  print('Brand: ${car2.getBrand()}');
  print('Model: ${car2.getModel()}');
  print('Year: ${car2.getYear()}');
  print('Miles Driven: ${car2.getMilesDriven()}');
  print('Age: ${car2.getAge()}');
  print('');

  print('Car 3:');
  print('Brand: ${car3.getBrand()}');
  print('Model: ${car3.getModel()}');
  print('Year: ${car3.getYear()}');
  print('Miles Driven: ${car3.getMilesDriven()}');
  print('Age: ${car3.getAge()}');
  print('');

  // Printing out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}
