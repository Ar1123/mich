import 'package:flutter/material.dart';

class BannerAuth extends StatelessWidget {
  const BannerAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.3,
      color: Color.fromRGBO(220, 168, 14, 1),
      child: Container(
        width: double.infinity,
        child: Image(image: AssetImage('assets/logo.png')),
      ),
    );
  }
}
