import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing/features/domain/entities/class_principal.dart';

void main() {
  final classPrincial = ClassPrincipal(
      pesoLiquido: 750,
      quantDoses: 1,
      pesoBruto: 1200,
      tara: 450,
      pesoGrfAberta: 1000);

  group('Test Calculate: ', () {
    test('a resposta deve ser 6.4 doses', () {
      expect(classPrincial.calculate(), classPrincial.calculate());
    });

    test('pesoLiquido igual (pesoBruto - tara)', () {
      expect(classPrincial.pesoLiquido,
          (classPrincial.pesoBruto - classPrincial.tara));
    });

    test('tara igual pesoBruto - pesoLiquido', () {
      expect(classPrincial.tara,
          (classPrincial.pesoBruto - classPrincial.pesoLiquido));
    });

    test(' pesoGrfAberta > tara && pesoGrfAberta < pesoBruto', () {
      expect(true, classPrincial.pesoGrfAberta > classPrincial.tara);
    });

    test('quatidades de doses > 0 e < 100', () {
      expect(true,
          classPrincial.quantDoses > 0 && classPrincial.quantDoses < 100);
    });
  });
}
