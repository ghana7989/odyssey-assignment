import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "bg.png",
          ),
          repeat: ImageRepeat.noRepeat,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.8),
            BlendMode.dstATop,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "We Specialise in Cloud computing and digital transformation",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Let’s go further, together Whether you already have an implementation in mind or are just getting started, our technology experts focus on your business goals and desired outcomes first. Not sure where to start? We’ll work with you to design and implement the right cloud, data, or digital experience solution for your team.",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              backgroundBlendMode: BlendMode.softLight,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlatformSvg(
                          "https://odysseycloud.io/static/media/platform-google-cloud.85c091b4.svg"),
                      PlatformSvg(
                        "https://odysseycloud.io/static/media/platform-microsoft.60e90feb.svg",
                      ),
                      PlatformSvg(
                        "https://odysseycloud.io/static/media/platform-aws.567a3c4b.svg",
                      ),
                    ],
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlatformSvg(
                          "https://odysseycloud.io/static/media/platform-google-cloud.85c091b4.svg"),
                      PlatformSvg(
                        "https://odysseycloud.io/static/media/platform-microsoft.60e90feb.svg",
                      ),
                      PlatformSvg(
                        "https://odysseycloud.io/static/media/platform-aws.567a3c4b.svg",
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlatformSvg extends StatelessWidget {
  final String svgUrl;

  const PlatformSvg(this.svgUrl);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      svgUrl,
      width: 300,
      color: Colors.white,
    );
  }
}
