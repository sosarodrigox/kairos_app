import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kairos_app/common/scaffold.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KairosScaffold(
      useBackground: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to KairosApp',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please, login to continue',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
