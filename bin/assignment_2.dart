abstract class Animal {
  final String _name;

  Animal(this._name);

  void makeSound();

  String get name {
    return _name;
  }
}

class Lion extends Animal {
  final int _maneSize;
  Lion(super._name, int maneSize) : _maneSize = maneSize {
    if (maneSize < 0) {
      throw ArgumentError("Mane size cannot be negative.");
    }
  }

  int get maneSize {
    return _maneSize;
  }

  @override
  void makeSound() {
    print("Lion is making sound");
  }
}

class Elephant extends Animal {
  final int _trunkLength;
  Elephant(super.name, int trunkLength) : _trunkLength = trunkLength {
    if (trunkLength < 0) {
      throw ArgumentError("trunkLength cannot be negative.");
    }
  }
  int get trunkLength {
    return _trunkLength;
  }

  @override
  void makeSound() {
    print("Elephant is making sound");
  }
}

class Parrot extends Animal {
  final int _vocabularySize;
  Parrot(super.name, this._vocabularySize);
  int get vocabularySize {
    return _vocabularySize;
  }

  @override
  void makeSound() {
    print("Elephant is making sound");
  }
}
