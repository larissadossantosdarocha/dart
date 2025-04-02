import 'dart:io';

void main() {
    double salario;
    double desconto = 0.0;

    print('Digite o salário do funcionário: ');
    String? e = stdin.readLineSync();

    if (e != null) {
        salario = double.parse(e);

        if (salario <= 1412.00) {
            desconto = salario * 0.075;
        } else if (salario <= 2666.68) {
            desconto = salario * 0.09;
        } else if (salario <= 4000.03) {
            desconto = salario * 0.12;
        } else {
            desconto = salario * 0.14;
        }

        double salarioFinal = salario - desconto;

        print('O desconto do INSS foi ${desconto}');
        print('O salário final é ${salarioFinal}');
    } else {
        print('Valor inválido.');
    }
}
