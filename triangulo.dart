import 'dart:io';

void main() {
    int a, b, c;

    print('Digite o primeiro lado do triângulo: ');
    String? e1 = stdin.readLineSync();
    
    print('Digite o segundo lado do triângulo: ');
    String? e2 = stdin.readLineSync();
    
    print('Digite o terceiro lado do triângulo: ');
    String? e3 = stdin.readLineSync();

    if (e1 != null && e2 != null && e3 != null) {
        a = int.parse(e1);
        b = int.parse(e2);
        c = int.parse(e3);

        if (a == b && b == c) {
            print('EQUILÁTERO');
        } else if (a == b || a == c || b == c) {
            print('ISÓSCELES');
        } else {
            print('ESCALENO');
        }
    } else {
        print('Valores inválidos.');
    }
}
