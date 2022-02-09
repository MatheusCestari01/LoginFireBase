import 'package:flutter/material.dart';
import 'package:revisao/usuario_form.dart';

class UsuarioPage extends StatelessWidget {
  const UsuarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nobo Usuário"),
      ),
        body: UsuarioForm(),
    );
  }
}