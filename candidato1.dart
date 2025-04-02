import 'dart:io';

class Candidato {
  // Atributos
  int id = 0;
  String nome = '';
  int votos = 0;

  // Método construtor
  Candidato(this.id, this.nome, this.votos);

  // Método toString
  @override
  String toString() {
    return '{id: $id, nome: $nome, votos: $votos}';
  }
}

void main() {
  List<Candidato> candidatos = [];
  int idContador = 1;
  String? entrada;
  
  while (true) {
    print('\n### MENU ###');
    print('1 - Adicionar candidato');
    print('2 - Excluir candidato');
    print('3 - Mostrar porcentagem de votos');
    print('4 - Sair');
    print('Escolha uma opção: ');

    entrada = stdin.readLineSync();
    
    if (entrada == '1') {
      String nome;
      int votos;

      entrada = null;
      while (entrada == null) {
        print('Digite o nome do candidato: ');
        entrada = stdin.readLineSync();
      }
      nome = entrada;
      
      entrada = null;
      while (entrada == null) {
        print('Digite a quantidade de votos: ');
        entrada = stdin.readLineSync();
      }
      votos = int.parse(entrada!);

      // Criando e adicionando o candidato
      Candidato candidato = Candidato(idContador, nome, votos);
      candidatos.add(candidato);
      idContador++;

      print('Candidato adicionado com sucesso!');
    } 
    
    else if (entrada == '2') {
      print('Digite o ID do candidato que deseja excluir: ');
      entrada = stdin.readLineSync();

      if (entrada != null) {
        int idExcluir = int.parse(entrada);
        candidatos.removeWhere((c) => c.id == idExcluir);
        print('Candidato removido com sucesso!');
      }
    } 
    
    else if (entrada == '3') {
      int totalVotos = candidatos.fold(0, (soma, c) => soma + c.votos);

      if (totalVotos == 0) {
        print('Nenhum voto registrado.');
      } else {
        for (var c in candidatos) {
          double porcentagem = (c.votos / totalVotos) * 100;
          print('ID: ${c.id}, Candidato: ${c.nome}, Votos: ${c.votos}, Porcentagem: ${porcentagem.toStringAsFixed(2)}%');
        }
      }
    } 
    
    else if (entrada == '4') {
      print('Saindo do programa...');
      break;
    } 
    
    else {
      print('Opção inválida. Tente novamente.');
    }
  }
}
