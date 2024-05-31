import 'package:flutter/material.dart';
import 'package:spacex/core/constant/app_asset.dart';
import 'package:spacex/core/core_widgets/custom_gradient_scaffold.dart';
import 'package:spacex/first_planet.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images=[
                AppAssets.venus,
                AppAssets.earth,
                AppAssets.mercury,
                AppAssets.earth,
                AppAssets.jupiter,
                AppAssets.mars,
                AppAssets.venus,
                AppAssets.saturn,
                 AppAssets.venus,
                AppAssets.earth,
                AppAssets.mercury,
                AppAssets.earth,
                AppAssets.jupiter,
                AppAssets.mars,
                AppAssets.venus,
                AppAssets.saturn,
    ];
    return SafeArea(
        child: CustomGradientScaffold(
            body: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 7,
              crossAxisSpacing: 2,
              children: 
               List.generate(images.length , (index) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const VenusPlanet()));
                } , child: Image.asset (images[index]))
               ),
            ),
            image: AppAssets.xIcon));
  }
}
