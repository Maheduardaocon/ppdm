class usuario {
  String? _nome;
  String? _login;
  String? _senha;
  String? _email;
  String? _nomemed;
  String? _especialidade;

  String get nome => _nome!;
  set nome(String value) {
    _nome = value;
  }

  String get login => _login!;
  set login(String value) {
    _login = value;
  }
  String get senha => _senha!;
  set senha(String value) {
    _senha = value;
  }
  String get email => _email!;
  set email(String value) {
    _email = value;
  }
  String get nomemed => _nomemed!;
  set nomemed(String value) {
    _nomemed = value;
  }
  String get especialidade => _especialidade!;
  set especialidade(String value) {
    _especialidade = value;
  }
}