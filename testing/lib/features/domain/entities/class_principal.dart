class ClassPrincipal {
  double pesoLiquido;
  int quantDoses;
  double pesoBruto;
  double tara;
  double pesoGrfAberta;

  ClassPrincipal({
    required this.pesoLiquido,
    required this.quantDoses,
    required this.pesoBruto,
    required this.tara,
    required this.pesoGrfAberta,
  });

  // pesoLiquido: 1200,
  //     quantDoses: 12,
  //     pesoBruto: 1200,
  //     tara: 450,
  //     pesoGrfAberta: 850);

  calculate() {
    var total = (pesoGrfAberta - tara) * quantDoses / (pesoBruto - tara);
    try {
      if (pesoLiquido == (pesoBruto - tara) &&
          tara == pesoBruto - pesoLiquido) {
      }
      else if ((pesoGrfAberta < tara) && (pesoGrfAberta > pesoBruto)) {
      } 
      else if (quantDoses > 0 && quantDoses <= 100) {
      }
      
    } catch (e) {}

    return total;
  }
}
