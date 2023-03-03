import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../../models/user.dart';

Widget? AuthBuilder(BuildContext context, AuthenticatorState state) {
  const padding = EdgeInsets.only(left: 16, right: 16, top: 48, bottom: 16);
  switch (state.currentStep) {
    case AuthenticatorStep.signIn:
      return Scaffold(
        body: Padding(
          padding: padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // app logo
                const Center(child: FlutterLogo(size: 100)),
                // prebuilt sign in form from amplify_authenticator package
                SignInForm(),
              ],
            ),
          ),
        ),
        // custom button to take the user to sign up
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?'),
              TextButton(
                onPressed: () => state.changeStep(
                  AuthenticatorStep.signUp,
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ],
      );
    case AuthenticatorStep.signUp:
      return Scaffold(
        body: Padding(
          padding: padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // app logo
                const Center(child: FlutterLogo(size: 100)),
                // prebuilt sign up form from amplify_authenticator package
                SignUpForm(),
              ],
            ),
          ),
        ),
        // custom button to take the user to sign in
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () => state.changeStep(
                  AuthenticatorStep.signIn,
                ),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ],
      );
    case AuthenticatorStep.onboarding:
      return Scaffold(
        body: Column(children: [
          const Center(child: FlutterLogo(size: 100)),
          ElevatedButton(
              onPressed: () async {
                setUserType('Admin');
                state.changeStep(AuthenticatorStep.signUp);
              },
              child: Text('Admin')),
          ElevatedButton(
              onPressed: () {
                setUserType('Player');
                state.changeStep(AuthenticatorStep.signUp);
              },
              child: Text('Player'))
        ]),
      );
    default:
      // returning null defaults to the prebuilt authenticator for all other steps
      return null;
  }
}

setUserType(type) async {
  final newUser = User()..type = type;
  var box = await Isar.open([UserSchema]);
  box.users.put(newUser);
}
