import 'package:flutter/material.dart';
import 'package:project_management/constants.dart';
import 'package:project_management/screens/onboarding/onboarding_data.dart';
import 'package:project_management/size_config.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage("assets/images/pngs/bg.png"),
                    //   fit: BoxFit.cover,
                    // ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    controller: pageController,
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.defaultSize * 3,
                        ),
                        child: Column(
                          children: [
                            Spacer(flex: 1),
                            Image.asset(onboardingData[index].imgPath),
                            Spacer(flex: 1),
                            Text(
                              onboardingData[index].title,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            SizedBox(height: SizeConfig.defaultSize * 1.5),
                            Text(
                              onboardingData[index].description,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Spacer(flex: 1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                                  List.generate(onboardingData.length, (ind) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  height: SizeConfig.defaultSize,
                                  width: SizeConfig.defaultSize,
                                  decoration: BoxDecoration(
                                    color: ind == index
                                        ? kPrimaryColor
                                        : Colors.white,
                                    border: Border.all(color: kPrimaryColor),
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }),
                            ),
                            Spacer(flex: 1),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.defaultSize * 1.5),
                  child: TextButton(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 1.5,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: SizeConfig.defaultSize),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 9 -
                getProportionateScreenHeight(25),
            right: MediaQuery.of(context).size.width / 2 -
                getProportionateScreenWidth(75),
            child: Container(
              width: getProportionateScreenWidth(150),
              height: getProportionateScreenHeight(50),
              alignment: Alignment.center,
              child: Text(
                "Some text",
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 1.5,
                  color: kTextColor,
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.defaultSize,
                horizontal: SizeConfig.defaultSize * 2,
              ),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(10000),
              ),
            ),
          )
        ],
      ),
    );
  }
}
