class Animal{
  void makeSound(){
    print('sound');
  }
}

class Dog extends Animal{
  @override
  void makeSound() {
    print('bark');
  }
}

void main(List<String> args) {
  Dog d = Dog();
  d.makeSound();
}