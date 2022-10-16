void main() {
  //Operadores Primitivos
  int idade = 22;
  double altura = 1.75;
  //bool geek = true;
  //Uma variável do tipo "var" não tem um tipo de argumento definido,
  //dessa forma o dart trabalha para identificar qual o tipo de variável
  //que recebido
  var geek = true;
  //Uma variável que recebe const se torna uma variável constante tornando
  //impossível que ela tenha seu argumento alterado após ser declarada
  const String nome = 'Lucas Silva de Oliveira';
  //Já uma variável declarada como final, pode ser iniciada vazia, mas após
  //receber  seu argumento uma vez, ela não pode mais ser alterada
  final String apelido;
  //Tanto variáveis constantes quanto finais, não podem receber o tipo "var"
  //pois elas devem ter seus tipo definidos antes
  apelido = 'Kaosu';
  //Estrutura de dados List
  List<String> listaNomes = ['Lucas', 'Lucimar', 'Edvan', 'Nayara'];
  //Parâmetro "dynamic" serve para criar uma list com qualquer tipo de argumento
  List<dynamic> Lucas = [idade, altura, geek, nome, apelido];
  //List<dynamic> Lucas = [22, 1.75, true, 'Lucas Silva de Oliveira', 'Kaosu'];
  //Concatenação de Strings, deixando explicito o uso de ' ' para concatenar
  //quebra de linha no codigo
  String frase = 'Oi, meu nome é $nome \n'
      'mas pode me chamar de $apelido \n'
      'tenho $idade anos e $altura de altura \n'
      'e se me considero geek? A resposta é: $geek';

  String frase1 = 'Oi, meu nome é ${Lucas[3]} \n'
      'mas pode me chamar de ${Lucas[4]} \n'
      'tenho ${Lucas[0]} anos e ${Lucas[1]} de altura \n'
      'e se me considero geek? A resposta é: ${Lucas[2]}';
  print(frase);
  print("========================================================");
  print(frase1);
  print("========================================================");
  print(listaNomes);
  print("========================================================");
  //Laços de repetição

  //if Compara 2 objetos e retorna um valor true ou false
  if (idade > altura) {
    print(true);
  }
  //else é o fechamento do if, caso vc n queira fazer mais de uma comparação,
  //geralmente usado para o retorno falso da comparação
  else {
    print(false);
  }
  print("========================================================");

  //for é utilizado para construir um looping que temos um valor determinado de
  //quantas vezes queremos repetir o codigo, para isso temos uma estrutura muito
  //comum de contador onde vc tem a declaração da variável (int i = 0), a
  //comparação de ate onde ela deve ir (i < 5), e o acrescimento da variavel
  //para o fim de cada laço (i++)
  for (int i = 0; i < 5; i++) {
    print(i);
  }
  print("========================================================");

  //while funciona de uma forma um pouco diferente do for, pois ele é usado
  //geralmente quando nao sabemos ate quanto deve ir nossa repetição
  int energia = 100;
  while (energia > 0) {
    print(energia);
    energia = energia - 10;
  }
  print("========================================================");
  //Junto do while temos a foram de uso do{} while(), que inicia a ação
  //antes do laço ser feito
  int energia1 = 100;
  do {
    print(energia1);
    energia1 = energia1 - 10;
  } while (energia1 > 0);
  print("========================================================");

  //Métodos úteis para Listas em Dart
  List<String> listTeste = [
    'Lucas',
    'Nayara',
    'Lucimar',
    'Edvan',
    'Bruna',
    'Luan',
    'Daniel',
    'Wivianey'
  ];
  print('Lista inteira a seguir $listTeste');
  print("========================================================");

  //Método Sublist, ele pega um intevalo que você define de uma lista apartir de
  //seus índices, lebrando que o primeiro índice é inclusivo, ou seja ele pega o
  //argumento que estiver no índice, ja o segundo é exclusivo, ou seja, ele
  //apenas pega o argumento do índice anterior ao que você definiu como final
  List<String> subList = listTeste.sublist(1, 4);
  print('Sub-list a seguir $subList');
  print("========================================================");

  //Método For Eache, significa "Para cada um" esse método ira passar como um
  //laço de repetição por todos os elementos de sua list, podendo executar
  //qualquer ação que vc desejar, desde alteração de dados até um simples print
  listTeste.forEach((element) {
    print(element);
  });
  print('Acabou!');
  print("========================================================");

  //Método Contains, esse método busca um elemento dentro de sua lista, ele pode
  //retornar diretamente um resultado booleano, e pode ser usado como paramentro
  //para um if
  String procurando = "Nayara";
  if (listTeste.contains(procurando)) {
    print('Achou!');
  } else {
    print('Não Achou!');
  }
  print("========================================================");
  print(listTeste.contains('Lucas'));
  print("========================================================");

  //Método Reduce, esse método une uma lista em um objeto só, utilizando de 2
  //parâmetros, value, que é o objeto que será retornado e element, que são os
  //dados dentro da list, esse método exige que value tenha um retorno dentro
  //de uma função geralmente sendo uma arrow, mas tbm podendo ser uma função
  //explicita
  String nomes = listTeste.reduce((value, element) {
    return value + ", " + element;
  });
  print(nomes);
  print("========================================================");

  //Método Where, esse método é utilizado para fazer comparações dentro dos
  //elementos da lista, te retornando um Iterable, que é como se fosse o pai do
  //método lista, é um coleção de elementos que podem ser interados, mas temos
  //uma forma de contornar esse retorno em Iterable, podemos utilizar o método
  //tolist.
  List<String> maior =
      listTeste.where((element) => element.length > 4).toList();
  print(maior);
  print("========================================================");
  //Podemos também fazer dessa forma
  Iterable maiorConvertToList =
      listTeste.where((element) => element.length > 4);
  print(maiorConvertToList.toList());
  print("========================================================");
  //Ou dessa forma
  Iterable maiorIterable = listTeste.where((element) => element.length > 4);
  print(maiorIterable);
  print("========================================================");
  //Dentro do método where também podemos pegar o primeiro ou o útimo argumento
  //que satisfaça nossa condição booleana, com os seguintes comandos
  //firstWhere e lastWhere
  String primeiro = listTeste.firstWhere((element) => element.length > 4);
  print(primeiro);
  print("========================================================");
  String ultimo = listTeste.lastWhere((element) => element.length > 4);
  print(ultimo);
  print("========================================================");
}
