abstract class Animal {
  final String _name;

  Animal(this._name);

  void makeSound();
  @override
  String toString();
  String get name {
    return _name;
  }
}

class Lion extends Animal {
  int _maneSize;
  Lion(super._name, int maneSize) : _maneSize = maneSize {
    if (maneSize < 0) {
      throw ArgumentError("Mane size cannot be negative.");
    }
  }

  int get maneSize {
    return _maneSize;
  }

  set maneSize(int newSize) {
    if (newSize < 0) {
      print("Error:  Value not changed cause maneSize  was negative.");
    } else {
      _maneSize = newSize;
    }
  }

  @override
  void makeSound() {
    print("Lion is making sound");
  }

  @override
  String toString() => "Lion: $name, Mane Size: $maneSize cm";
}

class Elephant extends Animal {
  int _trunkLength;
  Elephant(super.name, int trunkLength) : _trunkLength = trunkLength {
    if (trunkLength < 0) {
      throw ArgumentError("trunkLength cannot be negative.");
    }
  }
  int get trunkLength {
    return _trunkLength;
  }

  set trunkLength(int newTrunkLength) {
    if (newTrunkLength < 0) {
      print("Error:  Value not changed cause trunkLength was negative.");
    } else {
      _trunkLength = newTrunkLength;
    }
  }

  @override
  void makeSound() {
    print("Elephant is making sound");
  }

  @override
  String toString() => "Elephant: $name, Trunk Length: $trunkLength m";
}

class Parrot extends Animal {
  int _vocabularySize;
  Parrot(super.name, int vocabularySize) : _vocabularySize = vocabularySize {
    if (vocabularySize < 0) {
      print("vocabularySize cannot be negative");
    }
  }
  int get vocabularySize {
    return _vocabularySize;
  }

  set vocabularySize(int newVocabularySize) {
    if (newVocabularySize < 0) {
      print("Error:  Value not changed cause VocabularySize was negative.");
    } else {
      _vocabularySize = newVocabularySize;
    }
  }

  @override
  String toString() => "Parrot: $name, Vocabulary Size: $vocabularySize words";

  @override
  void makeSound() {
    print("parrot is making sound");
  }
}

void addAnimalSafely(List<Animal> zooAnimals, Animal Function() creator) {
  try {
    zooAnimals.add(creator());
  } catch (e) {
    print("Error adding animal: $e");
  }
}

void main() {
  List<Animal> zooAnimals = [];
  addAnimalSafely(zooAnimals, () => Lion("Lion 1", 100));
  addAnimalSafely(zooAnimals, () => Elephant("Elephant 1", -80));
  addAnimalSafely(zooAnimals, () => Parrot("Parrot 1", 70));
  addAnimalSafely(zooAnimals, () => Elephant("Elephant 2", -80));
  print("\n **Animals**");
  for (var animal in zooAnimals) {
    print(animal);
    animal.makeSound();
  }

  ///Check setters !
  print("\n- Updating values -");
  var lion = Lion("Lion3", 40);
  lion.maneSize = 50; // valid input
  lion.maneSize = -10; // invalidity
  print(lion);
  var parrot = Parrot("Parrot2", 40);
  parrot.vocabularySize = 50; // valid
  parrot.vocabularySize = -10; // invalid
  print(parrot);
}
