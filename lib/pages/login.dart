import 'package:flutter/material.dart';
import 'package:proyecto/widgets/banner.dart';

class LogionPage extends StatefulWidget {
  LogionPage({Key? key}) : super(key: key);

  @override
  _LogionPageState createState() => _LogionPageState();
}

class _LogionPageState extends State<LogionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              BannerAuth(),
              _form(context),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text('¿Olvidaste tu contraseña?'),
                ),
              ),
              _button(),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text('Crear Cuenta'),
                ),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, 'registro'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _form(BuildContext context) => Container(
        margin: EdgeInsets.only(top: 100, left: 40, right: 40),
        child: Card(
          elevation: 4.0,
          child: Column(children: [
            _inputUser(),
            _inputpass(),
          ]),
        ),
      );
  Widget _inputUser() => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange.withOpacity(0.5),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(Icons.person_outline),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ))
          ],
        ),
      );
  Widget _inputpass() => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange.withOpacity(0.5),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 30),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(Icons.lock_open),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ))
          ],
        ),
      );

  Widget _button() => Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: ElevatedButton(
          child: Text('Ingresar'),
          onPressed: () {},
        ),
      );
}
