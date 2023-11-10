import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF242430),
      constraints: const BoxConstraints(maxWidth: 1500),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rafael Alves Carrasco",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Estudante de TI e entusiasta Tecnológico",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Atualmente estudando ciência da computação no Instituto Mauá de Tecnologia",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
              ],
            );
          } else {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                SizedBox(height: 15),
                Text(
                  "Rafael Alves Carrasco",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Estudante de TI e entusiasta Tecnológico",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Atualmente estudando ciência da computação no Instituto Mauá de Tecnologia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
