class Vacinacao {
  int cpf;
  String local;
  String nome;
  String email;
  String data_nascimento;
  String sexo;
  String senha;
  int numero_cartao_sus;
  String local_vac;
  String dia_vac;
  String horario;
  String cpf_login;
  String senha_login;

  Vacinacao(
    {this.cpf,
    this.local,
    this.nome,
    this.email,
    this.data_nascimento,
    this.sexo,
    this.senha,
    this.numero_cartao_sus,
    this.local_vac,
    this.dia_vac,
    this.horario,
    this.cpf_login,
    this.senha_login});

  Vacinacao.fromJson(Map<String, dynamic> json) {
    cpf = json['cpf'];
    nome = json['nome'];
    email = json['email'];
    local = json['local'];
    data_nascimento = json['data_nascimento'];
    sexo = json['sexo'];
    senha = json['senha'];
    numero_cartao_sus = json['numero_cartao_sus'];
    local_vac = json['local_vac'];
    dia_vac = json['dia_vac'];
    horario = json['horario'];
    cpf_login = json['cpf_login'];
    senha_login = json['senha_login'];

  }


  @override
  String toString() {
    return 'Vacinacao{cpf: $cpf, nome: $nome, email: $email, local: $local, data_nascimento: $data_nascimento, sexo: $sexo, senha: $senha, numero_cartao_sus: $numero_cartao_sus, local_vac: $local_vac, dia_vac: $dia_vac, horario: $horario, cpf_login: $cpf_login, senha_login: $senha_login}';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['cpf'] = this.cpf;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['local'] = this.local;
    data['data_nascimento'] = this.data_nascimento;
    data['sexo'] = this.sexo;
    data['numero_cartao_sus'] = this.numero_cartao_sus;
    data['local_vac'] = this.local_vac;
    data['dia_vac'] = this.dia_vac;
    data['horario'] = this.horario;
    data['cpf_vac'] = this.cpf_login;
    data['senha_vac'] = this.senha_login;
    

    return data;
  }
}
