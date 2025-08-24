import '../data/models/leitura.dart';
import '../data/models/recomendacao.dart';

class RecomendadorService {
  /// Calculates the recommended irrigation amount based on recent readings and simulated rain.
  RecomendacaoIrrigacao gerarRecomendacao({
    required String talhaoId,
    required List<Leitura> leiturasRecentes,
    required bool chuvaSimuladaPrevista,
  }) {
    final umidadeMedia = leiturasRecentes.isEmpty
        ? 50.0 // Assume a neutral moisture if no recent readings
        : leiturasRecentes
            .map((l) => l.umidadeSolo)
            .reduce((a, b) => a + b) /
            leiturasRecentes.length;

    double mmSugeridos;
    String motivo;

    if (umidadeMedia < 35.0) {
      mmSugeridos = 10.0; // Average of 8-12
      motivo = "Solo seco. Necessita de irrigação.";
    } else if (umidadeMedia >= 35.0 && umidadeMedia <= 55.0) {
      mmSugeridos = 5.0; // Average of 4-6
      motivo = "Umidade moderada. Irrigação de manutenção.";
    } else {
      mmSugeridos = 1.0; // Average of 0-2
      motivo = "Solo úmido. Pouca ou nenhuma irrigação necessária.";
    }

    if (chuvaSimuladaPrevista) {
      mmSugeridos *= 0.6; // Reduce by 40% if rain is expected
      motivo += " Chuva prevista.";
    }

    return RecomendacaoIrrigacao(
      talhaoId: talhaoId,
      mmSugeridos: double.parse(mmSugeridos.toStringAsFixed(2)), // Format to 2 decimal places
      motivo: motivo,
      geradaEm: DateTime.now(),
    );
  }
}
