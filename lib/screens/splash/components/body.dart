import 'package:flutter/material.dart';
import 'package:defood/constants.dart';
import 'package:defood/screens/sign_in/sign_in_screen.dart';
import 'package:defood/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Selamat Datang di Defood, \nmari kita pesan!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Kami mempunyai koneksi ke seluruh \ntoko makanan atau restauran di penjuru Indonesia.",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Kami menampilkan cara memesan makanan \ndengan mudah dan cepat. Oleh karena itu, \ntetaplah #diRumahAja",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
          ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 150,
                  bottom: 0,
                  left: 24, 
                  right: 24,
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Lanjutkan",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 0,
                        left: 24, 
                        right: 24,
                      ),
                      child: Center(
                        child: Text(
                          "@copyright 2021 NovitaLiaNS",
                          style: TextStyle(fontSize: getProportionateScreenWidth(10),
                          color: kSecondaryColor,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.green,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
