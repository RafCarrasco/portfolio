import 'package:flutter/material.dart';
import 'package:portfolio/components/area_info_text.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
      width: 500,
      height: 355,
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color(0xFF242430),),
      child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 18,),
          Text(
            "Sobre",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
              ),
              textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
        SizedBox(child: Text("""Sou um estudante dedicado de Ciências da Computação, apaixonado por tecnologia e pelo mundo digital. 
Tenho grande interesse em desenvolver minhas habilidades em programação e outras áreas da tecnologia, como inteligência artificial.
Estou aberto a oportunidades de trabalho que me permitam aplicar meus conhecimentos e crescer profissionalmente.""",
          style: TextStyle(fontSize: 16.0),
          ),
        ),
        SizedBox(height: 15,),
        AreaInfoText(
          title: "País:",
          widthAreaInfo: 100,
          text: "Brasil"
        ),
        AreaInfoText(
          title: "Cidade:",
          widthAreaInfo: 83,
          text: "SP/SBC"
        ),
        AreaInfoText(
          title: "Idade:",
          widthAreaInfo: 92,
          text: "21"
        ),
        AreaInfoText(
          title: "Sexo:",
          widthAreaInfo: 96,
          text: "Masculino"
        ),
      ],
    ),
    );
  }
}
