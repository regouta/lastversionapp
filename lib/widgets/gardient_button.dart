/*import 'package:flutter/material.dart';
import 'package:pfe_app/home.dart';
import 'package:pfe_app/main.dart';
import 'package:pfe_app/pallete.dart';

import '../hazem.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'log in',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}*/
