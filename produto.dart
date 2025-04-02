import 'dart:io';

void main() {
    double preco;
    print('Digite o preço do produto: ');
    String? e = stdin.readLineSync();
    
    if (e != null) {
        preco = double.parse(e);
        
        if (preco > 1000) {
            preco = preco - (preco * 0.08);
        }
        
        print('O preço final do produto é ${preco}');
    } else {
        print('Valor inválido.');
    }
}

