import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/home/competitions.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CompetitionsPage extends StatelessWidget {
  static const String routeName = "/competitions";

  Widget socialActions(context, Speaker speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.githubUrl);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
//    var _homeBloc = HomeBloc();
//    var state = _homeBloc.currentState as InHomeState;
//    var speakers = state.speakersData.speakers;
    return DevScaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (c, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      child: CachedNetworkImage(
                        fit: BoxFit.contain,
                        imageUrl: competitions[i].competitionImage,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                competitions[i].competitionName,
                                style: Theme.of(context).textTheme.title,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: 5,
                                color: Tools.multiColors[Random().nextInt(4)],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            competitions[i].competitionDesc,
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            competitions[i].competitionSession,
                            style: Theme.of(context).textTheme.caption,
                          ),
//                          socialActions(context, speakers[i]),
                        ],
                      ),
                    )
                  ],
                )),
          );
        },
        itemCount: competitions.length,
      ),
      title: "Competitions",
    );
  }
}
