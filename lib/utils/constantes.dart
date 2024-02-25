import 'package:flutter_application_1/models/usuarios.dart';

final List<Usuarios> banco = [
  Usuarios(
      email: 'johnzinho123@gmail.com',
      senha: 'brasil10',
      nomeUsuario: 'John Chaves',
      fotoUsuario: 'https://source.unsplash.com/random',
      patrimonio: '23.444,09',
      tiposDeInvestimentos: ['Ibovespa', 'Magalu', 'Jogo do Bicho']),
  Usuarios(
      email: 'saulindazn@gmail.com',
      senha: 'brasil11',
      nomeUsuario: 'Saulo Trindade',
      fotoUsuario: 'https://source.unsplash.com/random',
      patrimonio: '49.682,32',
      tiposDeInvestimentos: [
        'Rinha de Cachorro',
        'CDI',
        'Fundos Imobiliários',
        'Magalu',
        'Jogo do Bicho'
      ]),
  Usuarios(
      email: 'jaomacaibense@gmail.com',
      senha: 'brasil12',
      nomeUsuario: 'João Soares',
      fotoUsuario: 'https://source.unsplash.com/random',
      patrimonio: '29.688,25',
      tiposDeInvestimentos: [
        'Blaze',
        'Betano',
      ])
];
