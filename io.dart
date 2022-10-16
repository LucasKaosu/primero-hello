import 'dart:io';

void main() {
  //Esse código é um estudo sobre Input e Output dentro do dart utilizando o
  //terminal
  print('Olá Mundo');
  print('====================================================================');

  //No dart o método print é capaz de mostrar qualquer informação, isso porque
  //ele tem um .toString diretamente nele, e como tudo no dart é um objeto,
  //ele consegue converter todo objeto em uma string
  print('Lucas'); //String
  print(22); //integer
  print(1.75); //double
  print('====================================================================');

  //Temos outras duas formas de manipular o print
  //temos a concatenação que consistem em juntar várias strings em uma só, mas
  //ela funciona apenas de string para string portanto é necessário que seja
  //feito uma conversão com .toString para que outros tipos de variáveis sejam
  //convertidas para strings e então concatenadas
  print('Meu noma é Lucas e tenho ' + 22.toString() + ' anos de idade.');
  //ou também pode ser feito assim
  int idade = 22;
  print('Meu nome é Lucas e tenho ' + idade.toString() + ' anos de idade.');

  //Também temos a Interpolação, que é uma propriedade da string e nao do método
  //print, e é extremamente útil na hora de codar, basta que antes de uma
  //variável é necessário utilizar um $
  print('Meu nome é Lucas e tenho $idade anos de idade.');

  //Com a interpolação também podemos fazer operações dentro do print, lembrando
  //que após o $ é necessário que {} sejam utilizadas e toda a operação deve ser
  //feita dentro delas
  print('Meu nome é Lucas e irei fazer ${idade + 1} anos de idade.');
  print('====================================================================');

  //Agora vamos falar de Entrada de dados, utilizando da biblioteca dart:io
  //Primeiramente importe a biblioteca dart:io

  //Agora utilizaremos o método stdin, significa Standart Input (entrada padrão)
  //e então utilizaremos a readLineSync (leia a linha sincrona), sempre que
  //utilizarmos esse método o nosso código irá parar até que receba um valor no
  //terminal, esse valor deve ser guardado em uma varável do tipo String
  //ja que esse método sempre retorna uma String
  print('Digite qualquer coisa.');
  String? entrada1 = stdin.readLineSync();
  //O problema é que você precisa de uma String? que pode receber um valor nulo,
  //ja que a entrada desse método pode vir a ser nula, estude os conceitos de
  //null safety
  if (entrada1 != null) {
    print('Sua entrada foi: $entrada1');
  }
  print('acabou!');
  print('====================================================================');
  //Mas nem so de strings vive a entrade dados, como recebemos então outros
  //tipos de dados, a resposta é simples, com conversões
  print('Qual sua idade?');
  String? entrada2 = stdin.readLineSync();
  if (entrada2 != null) {
    int idade = int.parse(entrada2);
    print('Você irá fazer ${idade + 1} anos de idade');
  }
  print('acabou');
  print('====================================================================');
}
