import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
      SvgPicture.asset('assets/svgs/doc_logo_low_opacity.svg'),

        Container(

          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Colors.white,
              Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,0.4]
            )
          ),
          child:  Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(
                height: 1.4
              ),
            ),
          ),
        )

      ],
    );
  }
}
