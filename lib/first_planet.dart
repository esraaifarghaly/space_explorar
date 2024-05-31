import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spacex/core/constant/app_asset.dart';
import 'package:spacex/core/constant/sized_box.dart';
import 'package:spacex/core/core_widgets/custom_gradient_scaffold.dart';
import 'package:spacex/core/core_widgets/read_me_text.dart';

import 'core/core_widgets/divider.dart';

class VenusPlanet extends StatelessWidget {
  const VenusPlanet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomGradientScaffold(body:
          Column(
            children: [
              SizedBox2.vertical40 ,
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                AppAssets.venus ,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              ),
              ),
              SizedBox2.vertical20,
              const Divider2(),
              const Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ReadMeTextWidget(text: 'Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life.Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is...'),
                    )),
              ),
              const SizedBox(height: 10,)
            ],
          ),
          image: AppAssets.menuIcon,),
    ) ;
  }
}
