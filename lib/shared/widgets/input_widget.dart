import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? texto;
  final String? hintTexto;
  final String? Function(String?)? validator;
  final bool obscure;
  final Icon? icone;
  final Icon? sufixIcon;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final Color corBackground;
  final Color corErro;
  final Color corTexto;
  final Color? corBorda;
  final TextInputType? inputType;
  final bool leitura;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? formatters;
  final bool mostrarButton;
  final int? quantLinhas;

  InputWidget({
    required this.controller,
    this.texto,
    this.validator,
    this.obscure = false,
    this.icone,
    this.onChange,
    this.corBackground = Colors.white,
    this.inputType = TextInputType.text,
    this.corTexto = Colors.black87,
    this.hintTexto,
    this.hintStyle,
    this.formatters,
    this.corErro = Colors.red,
    this.corBorda,
    this.onTap,
    this.leitura = false,
    this.sufixIcon,
    this.mostrarButton = false,
    this.quantLinhas = 1,
  });

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool esconderSenha = false;

  @override
  void initState() {
    esconderSenha = widget.obscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => widget.onTap,
      readOnly: widget.leitura,
      obscureText: esconderSenha,
      controller: widget.controller,
      style: TextStyle(color: widget.corTexto, fontSize: 16),
      keyboardType: widget.inputType,
      inputFormatters: widget.formatters,
      minLines: widget.quantLinhas,
      maxLines: widget.quantLinhas,
      decoration: InputDecoration(
        prefixIcon: widget.icone,
        suffix: widget.mostrarButton ? _showPassword() : SizedBox(),
        labelText: widget.texto,
        hintText: widget.hintTexto,
        hintStyle: widget.hintStyle,
        fillColor: widget.corBackground,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: widget.corBorda ?? Colors.grey.withOpacity(0.3),
            width: 1.0,
          ),
        ),
        labelStyle: TextStyle(color: widget.corBackground),
        errorStyle: TextStyle(color: widget.corErro),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(
            color: widget.corErro,
            width: 1.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: widget.corBorda ?? Colors.grey.withOpacity(0.5),
            width: 1.0,
          ),
        ),
      ),
      validator: widget.validator,
      onChanged: widget.onChange,
    );
  }

  GestureDetector _showPassword() {
    return GestureDetector(
      onTap: () {
        setState(() {
          esconderSenha = !esconderSenha;
        });
      },
      child: Container(
        child: Text(
          esconderSenha ? 'Mostrar' : 'Esconder',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
