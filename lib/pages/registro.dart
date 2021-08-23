import 'package:flutter/material.dart';
import 'package:proyecto/widgets/banner.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Ya tengo una cuenta'),
                ),
                onTap: () => Navigator.pushReplacementNamed(context, 'login'),
              ),
              _button(),
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
            _inputEmail(),
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
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(Icons.person_outline),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                hintText: 'Mi nombre de usuario',
                border: InputBorder.none,
              ),
            ))
          ],
        ),
      );
  Widget _inputEmail() => Container(
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
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(Icons.email),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
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
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(Icons.lock_open),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                hintText: '***********',
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
