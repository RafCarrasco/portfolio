import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/colors.dart';
import 'package:portfolio/components/carousel.dart';
import 'package:portfolio/components/coding.dart';
import 'package:portfolio/components/knowledges.dart';
import 'package:portfolio/components/my_info.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _downloadCurriculum(BuildContext context) async {
    const url = 'assets/images/curriculo_rafael_carrasco.pdf';

    try {
      final response = await http.get(Uri.parse(url));
      final documentDirectory = await getApplicationDocumentsDirectory();
      final filePath = documentDirectory.path + '/curriculum.pdf';

      File file = File(filePath);
      await file.writeAsBytes(Uint8List.fromList(response.bodyBytes));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Currículo baixado com sucesso!'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao baixar o currículo'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isDesktop(context) ? AppBar(backgroundColor: bgColor) : null,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const MyInfo(),
                  const SizedBox(height: 15),
                  Responsive(
                    mobile: KnowledgesAndCoding(),
                    tablet: const Row(
                      children: [
                        Expanded(
                          child: Knowledges(),
                        ),
                        Expanded(
                          child: Coding(),
                        ),
                      ],
                    ),
                    desktop: const Row(
                      children: [
                        Expanded(
                          child: Knowledges(),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Coding(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: const Divider(),
                    padding: const EdgeInsets.all(5),
                  ),
                  const Text("Certificados",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  const SizedBox(height: 10),
                  CarouselExample(),
                  const Divider(),
                  TextButton(
                    onPressed: () => _downloadCurriculum(context),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CURRÍCULO",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    color: const Color(0xFF24242E),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            launch('https://github.com/RafCarrasco');
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFF24242E),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: SvgPicture.asset("assets/icons/github.svg", height: 30, width: 30),
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        InkWell(
                          onTap: () async {
                            launch('https://www.linkedin.com/in/rafael-carrasco-66b7581a3/');
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFF24242E),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: SvgPicture.asset("assets/icons/linkedin.svg", height: 30, width: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class KnowledgesAndCoding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Knowledges(),
        SizedBox(height: 15),
        Coding(),
      ],
    );
  }
}
