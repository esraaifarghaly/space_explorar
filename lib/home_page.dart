import 'package:flutter/material.dart';
import 'package:spacex/second_page.dart';
import 'package:spacex/core/constant/app_asset.dart';
import 'package:spacex/core/constant/theme.dart';
import 'core/core_widgets/custom_gradient_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return CustomGradientScaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
                text: TextSpan(style: AppTheme.nunitoFont40, children: [
              const TextSpan(text: 'Let’s Explore the\n'),
              TextSpan(
                  text: 'Solar System \n',
                  style: AppTheme.openSansFont40
                      .copyWith(color: AppTheme.yellowColor)),
              const TextSpan(text: 'with '),
              TextSpan(
                  text: 'Explorer',
                  style: AppTheme.nunitoFont40
                      .copyWith(color: AppTheme.yellowColor)),
            ])),
          ),
          Image.asset(AppAssets.splashImage),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(9))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Let’s Go',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(AppAssets.rocket)
                  ],
                )),
          )
        ],
      ),
      image: AppAssets.menuIcon,
    );
  }
}
