import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static final SharedPrefs _instance = SharedPrefs._privateConstructor();

  SharedPrefs._privateConstructor();

  factory SharedPrefs() {
    return _instance;
  }
  static const loginResponseProdKey = 'loginResponseProdKey';
  static const loginResponseKey = 'loginResponseKey';
  static const dashboardResponseKey = 'dashboardResponseKey';
  static const servidorResponseKey = 'servidorResponseKey';
  static const vinculoSelecionadoKey = 'vinculoSelecionadoKey';
  static const senhaKey = 'senhaKey';
  static const permissoesKey = 'permissoesKey';
  static const String visualizacaoVencimento = 'visualizacaoVencimento';
  static const String visualizacaoMargem = 'visualizacaoMargem';
  static const String termosDeUso = 'termosDeUso';

  Future read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key) ?? '');
  }

  Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  Future<bool> save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, json.encode(value));
  }

  Future<bool> contem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  Future<bool> saveSenha(String pass) async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode(pass);
    return await save(senhaKey, encoded);
  }

  Future<String> readSenha() async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    final String senha = await read(senhaKey);
    return stringToBase64.decode(senha);
  }

  Future<Set<String>> getKeys() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getKeys();
  }
}
