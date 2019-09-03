import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Devfest {
  static const String app_name = "Devfest";
  static const String app_version = "Version 1.0.4";
  static const int app_version_code = 1;
  static const String app_color = "#ffd7167";
  static Color primaryAppColor = Colors.white;
  static Color secondaryAppColor = Colors.black;
  static const String google_sans_family = "GoogleSans";
  static bool isDebugMode = false;

  // * Url related
  static String baseUrl = "https://storage.googleapis.com/gdg-devfest";

  static checkDebug() {
    assert(() {
      // baseUrl = "http://127.0.0.1:8000/gdg-devfest/";
      // * Change with your local url if any
      baseUrl = "https://storage.googleapis.com/gdg-devfest";
      isDebugMode = true;
      return true;
    }());
  }

  static bool get checkDebugBool {
    var debug = false;
    assert(debug = true);

    return debug;
  }

  //* Images
  static const String home_img = "assets/images/home_img.jpeg";
//  static const String banner_light = "assets/images/banner_light.png";
  static const String banner_light = "assets/images/purvodaya.gif";
  static const String banner_dark = "assets/images/purvodaya.gif";

  //*  Texts
  static const String welcomeText = "Welcome to Purvodaya 2020";
  static const String descText =
      '''Purvodaya, the annual B-School festival of Vinod Gupta School of Management, IIT Kharagpur is an amalgamation of events spread across all the domains of business and management. Spread across 3 days, it provides an ideal platform for the budding managers and innovators of today to hone their skills and test their mettle against their peers. The event hosts a complete business extravaganza.''';

  static const String loading_text = "Loading...";
  static const String try_again_text = "Try Again";
  static const String some_error_text = "Some error";
  static const String signInText = "Sign In";
  static const String signInGoogleText = "Sign in with google";
  static const String signOutText = "Sign Out";
  static const String wrongText = "Something went wrong";
  static const String confirmText = "Confirm";
  static const String supportText = "Support Needed";
  static const String featureText = "Feature Request";
  static const String moreFeatureText = "More Features coming soon.";
  static const String updateNowText =
      "Please update your app for seamless experience.";
  static const String checkNetText =
      "It seems like your internet connection is not active.";

  //* ActionTexts
  static const String agenda_text = "Agenda";
  static const String event_text = "Events";
  static const String competitions_text = "Competitions";
  static const String speakers_text = "Guests";
  static const String team_text = "Team";
  static const String sponsor_text = "Sponsors";
  static const String faq_text = "FAQ";
  static const String map_text = "Locate Us";

  //* Preferences
  static SharedPreferences prefs;
  static const String loggedInPref = "loggedInPref1";
  static const String displayNamePref = "displayNamePref";
  static const String emailPref = "emailPref";
  static const String phonePref = "phonePref";
  static const String photoPref = "photoPref";
  static const String isAdminPref = "isAdminPref";
  static const String darkModePref = "darkModePref";
}
