void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDeColheita = 40;
  bool isMadura = funcEstaMadura(diasDeColheita);
  print(isMadura);
  print("===================================================================");
  mostrarMadura("Uva" /*Argumento*/, 40 /*Argumento*/);
  print("===================================================================");
  mostrarMadura(nome /*Argumento*/, diasDeColheita /*Argumento*/);
  print("===================================================================");
  mostrarMaduraEx1(nome, diasDeColheita);
  //Argumento com valor no lugar correto
  print("===================================================================");
  mostrarMaduraEx2(nome, diasDeColheita, cor: "Roxa");
  //Argumento "Roxo" para parâmetro "cor"
  print("===================================================================");
  mostrarMaduraEx3(nome, diasDeColheita);
  //Argumento não informado, portando retorno é padrão
  mostrarMaduraEx3(nome, diasDeColheita, cor: "Roxo");
  //Argumento informado, portando o retorno não é mais padrão
  print("===================================================================");
  mostrarMaduraEx4(nome, cor: corFruta, diasDeColheita: diasDeColheita);
  //Argumento nomeado e informado, portanto nao gera erro, porem caso cor e
  //diaDeColheita não fossem informados, retornaria erro de um argumento
  //faltando, perceba também que a ordem dos dois argumentos estão invertidas
  //e isso não gera erra, pois parâmetros nomeado não exigem ordem exata dos
  //argumentos
  print("===================================================================");
}

//Vamos falar sobre Parâmetros e Argumetos
//Parâmetros são os dados que pertecem a função
//Argumentos são os dados que preencher os parâmetros quando se invoca uma função
void mostrarMadura(
    String nome /*Parâmetro*/, int diasDeColheita /*Parâmetro*/) {
  if (diasDeColheita >= 30) {
    print("A $nome está Madura");
  } else {
    print("A $nome não está Madura");
  }
}

//Temos então 3 tipos Parâmetros e 1 Modificador de Parâmetros que são eles:
// 1 Posicionais Obrigatórios
// 2 Nomeados Opcionais
// 3 Parâmetros com "Padrão" (Ou parâmetros defaut)
// 4 Modificador "required"
//serão demonstrados como mostrarMaduraEx1, mostrarMaduraEx2, mostrarMaduraEx3 e
//mostrarMaduraEx4

//Os Parâmetros Obrigatórios são aqueles que devem obrigatóriamente receber um
//argumento para cada parâmetro na ordem correta indispensávelmente,
//caso o contrário a função retornará erro
void mostrarMaduraEx1(String nome, int diasDeColheita) {
  if (diasDeColheita >= 30) {
    print("A $nome está Madura");
  } else {
    print("A $nome não está Madura");
  }
}

//Os Parâmetros Nomeados Opcionais, como a sentença sugere, são parãmetros que
//podem ou não ter argumentos passados, e eles só podem ser passados se forem
//citados pelo nome definido no parâmetro
void mostrarMaduraEx2(String nome, int diasDeColheita, {String? cor}) {
  if (diasDeColheita >= 30) {
    print("A $nome está Madura");
  } else {
    print("A $nome não está Madura");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

//Os Parâmetros com "Padrão" (Ou parâmetros defaut), tem um valor predefinido
//que é exibido na ausência de um argumento
void mostrarMaduraEx3(String nome, int diasDeColheita, {String cor = "Preto"}) {
  if (diasDeColheita >= 30) {
    print("A $nome está Madura");
    print("A $nome é $cor");
  } else {
    print("A $nome não está Madura");
    print("A $nome é $cor");
  }
}

//O Modificador "required", é uma forma de utilizar o Parâmetro nomeado
//tornando seu argumento obrigatório, mas com a vantagem de não precisar
//ter seu argumento informado na mesma ordem que o parâmetro construido
void mostrarMaduraEx4(String nome,
    {required int diasDeColheita, required String cor}) {
  if (diasDeColheita >= 30) {
    print("A $nome está Madura");
    print("A $nome é $cor");
  } else {
    print("A $nome não está Madura");
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
