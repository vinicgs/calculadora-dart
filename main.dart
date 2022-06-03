import 'dart:io';
import 'operacoes.dart';

void main(List<String> args) {
  int? y, x, mostrar;

  try {
    print('Digite o primeiro número: ');
    x = int.parse(stdin.readLineSync()!);
    print('Digite o segundo número: ');
    y = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Erro: Digite apenas números!');
    return;
  }

  try {
    print('Escolha uma das opções: ');
    print('1 - Soma');
    print('2 - Subtração');
    print('3 - Multiplicação');
    print('4 - Divisão');
    mostrar = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Erro: Digite um numero de 1 - 4, o sistema nao aceita letras!');
    return;
  }

  try {
    switch (mostrar) {
      case 1:
        print('A soma de ${x} por ${y} é : ${operacoes.soma(x, y)}');
        break;
      case 2:
        print('A subtração de ${x} por ${y} é : ${operacoes.subtracao(x, y)}');
        break;
      case 3:
        print('A multiplicação de ${x} por ${y} é : ${operacoes.multiplicacao(x, y)}');
        break;
      case 4:
        print('A divisão de ${x} por ${y} é : ${operacoes.divisao(x, y)}');
        break;
      default:
        print('Opção inválida');
    }
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
