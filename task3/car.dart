class Car{
  String brand,model;
  int year;
  Car(this.brand, this.model, this.year);
}

void main(List<String> args) {
  Car c = Car('Toyota','Corolla',2020);
  print('Brand: ${c.brand}, Model: ${c.model}, Year: ${c.year}');
}