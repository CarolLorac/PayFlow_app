import 'package:flutter/material.dart';
import 'package:payflow_app/modules/login/login_controller.dart';
import 'package:payflow_app/shared/themes/app_colors.dart';
import 'package:payflow_app/shared/themes/app_images.dart';
import 'package:payflow_app/shared/themes/app_text_styles.dart';
import 'package:payflow_app/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: AppColors.primary,
            ),
            Positioned(
                top: 35,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  height: 330,
                  width: 210,
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.10,
              child: Column(
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 70, right: 70, top: 10),
                      child: Text(
                        "Organize seus boletos em um só lugar!",
                        style: AppTextStyles.titleHome,
                        textAlign: TextAlign.center,
                      )),
                  SocialLoginButton(
                    margin: const EdgeInsets.only(left: 70, right: 70, top: 20),
                    onTap: ()
                    {
                      loginController.googleSingIn(context);
                    } 
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
