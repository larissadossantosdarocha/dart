import 'dart:io';

void main() {
    double salario;
    int filhos;

    print('Digite o salário do funcionário: ');
    String? e1 = stdin.readLineSync();

    print('Digite o número de filhos: ');
    String? e2 = stdin.readLineSync();

    if (e1 != null && e2 != null) {
        salario = double.parse(e1);
        filhos = int.parse(e2);

        if (salario < 2000) {
            salario = salario + (filhos * 60);
        }

        print('O salário final é ${salario}');
    } else {
        print('Valores inválidos.');
    }
}
