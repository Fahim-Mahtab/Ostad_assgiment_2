abstract class Animal {
  final String _name;

  Animal(this._name);

  void makeSound();

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
  set trunkLength(int newTrunkLength) {
    if (newTrunkLength < 0) {
      print("Error:  Value not changed cause trunkLength was negative.");
    } else {
      newTrunkLength = newTrunkLength;
    }
  }
  @override
  void makeSound() {
    print("Elephant is making sound");
  }
}

class Parrot extends Animal {
  final int _vocabularySize;
  Parrot(super.name, int vocabularySize) :_vocabularySize=vocabularySize{
    if(vocabularySize<0){
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
      newVocabularySize = newVocabularySize;
    }
  }
  @override
  void makeSound() {
    print("Parrot is making sound");
  }
}
void main(){
  List<Animal> zooAnimals = [];
  zooAnimals.add(Lion("Lion 1", 100));
  zooAnimals.add(Elephant("Elephant 1", 80));
  zooAnimals.add(Parrot("Parrot 1", 70));


  zooAnimals.add(Elephant("Elephant 2", -80));
  zooAnimals.add(Parrot("Parrot 2", -70));
   for(var animals in zooAnimals){
     print("\n--- Animal Details ---");
     print("Name: ${animals.name}");
     if (animals is Lion){
       print("Mane Size :${animals.maneSize} cm");
     }
     if (animals is Elephant){
       print("trunkLength Size :${animals.trunkLength} m");
     }
     if (animals is Parrot){
       print("vocabularySize Size :${animals.vocabularySize} ");
     }
     animals.makeSound();
   }

}