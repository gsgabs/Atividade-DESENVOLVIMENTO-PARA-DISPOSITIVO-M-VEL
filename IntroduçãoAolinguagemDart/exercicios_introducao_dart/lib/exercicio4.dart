void main() {
  Cat anim1 = Cat("Gat-01", 100000, 1, "Miau");
  anim1.printdetalhes();
}

class Animal {
  String _nome;
  var _cor;
  int _id;

  Animal(this._nome, this._cor, this._id);

  String get nome => _nome;
  int get id => _id;
  get cor => _cor;
}

class Cat extends Animal {
  String _som;

  Cat(String nome, var cor, int id, this._som) : super(nome, cor, id);

  void printdetalhes() {
    print("ID: $id\nNome: $nome\nCor: $cor\nSom: $_som");
  }
}

  
  // void printdetalhes() {
  //   print("Name: $_nome\nPreço: $_cor reais\nId: 00$_id");
  // }
