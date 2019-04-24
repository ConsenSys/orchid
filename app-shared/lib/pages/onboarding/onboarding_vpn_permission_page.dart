import 'package:flutter/material.dart';
import 'package:orchid/api/orchid_api.dart';
import 'package:orchid/api/user_preferences.dart';
import 'package:orchid/pages/app_gradients.dart';
import 'package:orchid/pages/common/app_bar.dart';
import 'package:orchid/pages/common/dialogs.dart';
import 'package:orchid/pages/onboarding/onboarding.dart';
import 'package:orchid/pages/onboarding/walkthrough_content.dart';

class OnboardingVPNPermissionPage extends StatefulWidget {
  @override
  _OnboardingVPNPermissionPageState createState() => _OnboardingVPNPermissionPageState();
}

class _OnboardingVPNPermissionPageState extends State<OnboardingVPNPermissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SmallAppBar.build(context),
      body: Container(
          decoration:
              BoxDecoration(gradient: AppGradients.verticalGrayGradient1),
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                // Center horizontally (walkthrough content fills screen vertically)
                Center(
                  child: WalkthroughContent(
                    imageLocation: WalkthroughContentImageLocation.Bottom,
                    titleText: "Let's get you set up",
                    bodyText:
                        "To fully utilize Orchid, you will need to grant permission for the VPN connection. Next up, you will see a dialog asking you to allow this connection.",
                    imageName: 'assets/images/illustration_4.png',
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: NextSkipButtons.build(
                      onNext: _confirmNext, onSkip: _skip),
                )
              ],
            ),
          )),
    );
  }

  // Show a confirmation dialog
  void _confirmNext() {
    Dialogs.showConfirmationDialog(
        context: context,
        title: "Allow Connection",
        body:
            "Orchid VPN is requesting permission to set up a VPN connection that will"
            " allow it to monitor network traffic. Only allow this if you trust this source."
            "\n\nAn icon will be shown at the top of your screen while the VPN is in use. Allow?",
        cancelText: "CANCEL",
        actionText: "OK",
        action: () {
          _next();
        });
  }

  // Accept the permission check.
  void _next() async {
    bool ok = await OrchidAPI().requestVPNPermission();
    if (ok) {
      _complete();
    }
  }

  // Skip the permission check for now.
  void _skip() {
    _complete();
  }

  // Note that the user has viewed this screen and move on.
  void _complete() async {
    await UserPreferences().setPromptedForVPNPermission(true);
    AppOnboarding().pageComplete(context);
  }
}
