void main() {
  House hos1 = new House("Lar-01", 100000, 001);
  House hos2 = new House("Lar-02", 112000, 002);
  House hos3 = new House("Lar-03", 98000, 003);
  
  
  List<dynamic> lista_objetos = [hos1, hos2, hos3];
  
  for (var casa in lista_objetos) {
    casa.printdetalhes();
  }
}

class House {
  String _nome;
  var _preco;
  int _id;

  House(this._nome, this._preco, this._id);
  
  void printdetalhes() {
    print("Name: $_nome\nPreço: $_preco reais\nId: 00$_id");
  }
}
