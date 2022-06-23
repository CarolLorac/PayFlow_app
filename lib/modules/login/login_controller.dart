import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow_app/modules/models/user_model.dart';
import 'package:payflow_app/shared/auth/auth_controller.dart';

class LoginController {
  
  Future<void> googleSingIn(BuildContext context) async {
    final authController = AuthController();

    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    
    try 
    {
      final response = await _googleSignIn.signIn(); //get the values of user google account
      final user = UserModel(name: response!.displayName!, photoUrl: response.photoUrl); 
      authController.setUser(context, user);
      print(response);
    } 
    catch (error) 
    {
      authController.setUser(context, null);
      print(error);
    }
  }
}
