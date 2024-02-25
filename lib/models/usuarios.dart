// ignore_for_file: public_member_api_docs, sort_constructors_first
class Usuarios {
  String email;
  String senha;
  String nomeUsuario;
  String fotoUsuario;
  String patrimonio;
  List<String> tiposDeInvestimentos;

  Usuarios({
    required this.email,
    required this.senha,
    required this.nomeUsuario,
    required this.fotoUsuario,
    required this.patrimonio,
    required this.tiposDeInvestimentos,
  });

  Usuarios copyWith({
    String? email,
    String? senha,
    String? nomeUsuario,
    String? fotoUsuario,
    String? patrimonio,
    List<String>? tiposDeInvestimentos,
  }) {
    return Usuarios(
      email: email ?? this.email,
      senha: senha ?? this.senha,
      nomeUsuario: nomeUsuario ?? this.nomeUsuario,
      fotoUsuario: fotoUsuario ?? this.fotoUsuario,
      patrimonio: patrimonio ?? this.patrimonio,
      tiposDeInvestimentos: tiposDeInvestimentos ?? this.tiposDeInvestimentos,
    );
  }
}
