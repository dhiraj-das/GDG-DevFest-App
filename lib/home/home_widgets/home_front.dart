import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/agenda_page.dart';
import 'package:flutter_devfest/competitions/competitions_page.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/events/event_page.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/map/map_page.dart';
import 'package:flutter_devfest/speakers/speaker_page.dart';
import 'package:flutter_devfest/sponsors/sponsor_page.dart';
import 'package:flutter_devfest/team/team_page.dart';
import 'package:flutter_devfest/universal/image_card.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {
  List<Widget> devFestTexts(context) => [
        Text(
          Devfest.welcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Devfest.descText,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
      ];

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget newActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        runSpacing: 20.0,
        children: <Widget>[
          ActionCard(
            icon: Icons.person,
            color: Colors.green,
            title: Devfest.speakers_text,
            onPressed: () =>
                Navigator.pushNamed(context, SpeakerPage.routeName),
          ),
          ActionCard(
            icon: Icons.event,
            color: Colors.red,
            title: Devfest.event_text,
            onPressed: () => Navigator.pushNamed(context, EventsPage.routeName),
          ),
          ActionCard(
            icon: FontAwesomeIcons.trophy,
            color: Colors.brown,
            title: Devfest.competitions_text,
            onPressed: () => Navigator.pushNamed(context, CompetitionsPage.routeName),
          ),
          ActionCard(
            icon: Icons.attach_money,
            color: Colors.purple,
            title: Devfest.sponsor_text,
            onPressed: () =>
                Navigator.pushNamed(context, SponsorPage.routeName),
          ),
//          ActionCard(
//            icon: Icons.question_answer,
//            color: Colors.brown,
//            title: Devfest.faq_text,
//            onPressed: () => Navigator.pushNamed(context, FaqPage.routeName),
//          ),
          ActionCard(
            icon: Icons.people,
            color: Colors.amber,
            title: Devfest.team_text,
            onPressed: () => Navigator.pushNamed(context, TeamPage.routeName),
          ),
          ActionCard(
            icon: Icons.map,
            color: Colors.blue,
            title: Devfest.map_text,
            onPressed: () => Navigator.pushNamed(context, MapPage.routeName),
          )
        ],
      );

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebookF),
              onPressed: () async {
                await _launchURL("https://www.facebook.com/Purvodaya.VGSoM");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.linkedinIn),
              onPressed: () async {
                await _launchURL("https://www.linkedin.com/in/purvodaya-vgsom-iit-kharagpur-54288ab6/");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram),
              onPressed: () async {
                _launchURL("https://www.instagram.com/vgsomiitkgp.purvodaya/");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: () async {
                await _launchURL("https://twitter.com/iampurvodaya?lang=en");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.youtube),
              onPressed: () async {
                await _launchURL("https://www.youtube.com/channel/UCHSL7VrG8kXrCqrkBUctVcw");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.envelope),
              onPressed: () async {
                var emailUrl =
                    '''mailto:vgsomiitkgp.purvodaya@gmail.com?subject=Regarding Purvodaya 2020''';
                var out = Uri.encodeFull(emailUrl);
                await _launchURL(out);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: ConfigBloc().darkModeOn
                  ? Devfest.banner_dark
                  : Devfest.banner_light,
            ),
            SizedBox(
              height: 20,
            ),
            ...devFestTexts(context),
            SizedBox(
              height: 20,
            ),
            newActions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context),
            SizedBox(
              height: 20,
            ),
            Text(
              Devfest.app_version,
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({Key key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onPressed,
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: ConfigBloc().darkModeOn
              ? Tools.hexToColor("#1f2124")
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: !ConfigBloc().darkModeOn
              ? [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
