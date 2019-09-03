import 'dart:async';
import 'package:flutter_devfest/home/home_provider.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  final IHomeProvider _homeProvider = HomeProvider();
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      var speakers = await _homeProvider.getSpeakers();
      var events = await _homeProvider.getEvents();
      return InHomeState(speakersData: speakers, eventsData: events);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorHomeState(_?.toString());
    }
  }
}
