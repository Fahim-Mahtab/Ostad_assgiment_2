abstract class Animal {
  String _name;

  Animal(this._name);

  void makeSound();

  String get name {
    return _name;
  }
}

class Lion extends Animal {
  int _manSize;
  Lion(this._manSize,super.name);

  @override
  void makeSound() {

  }
}

class Elephant extends Animal {
  int _trunkLength;
  Elephant(super.name,this._trunkLength);

  @override
  void makeSound() {
    // TODO: implement makeSound
  }
}

class Parrot extends Animal {
  int _vocabularySize;
  Parrot(super.name,this._vocabularySize);

  @override
  void makeSound() {
    // TODO: implement makeSound
  }
}
