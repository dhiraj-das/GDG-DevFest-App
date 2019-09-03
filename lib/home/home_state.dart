import 'package:equatable/equatable.dart';
import 'package:flutter_devfest/home/events.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  HomeState([Iterable props]) : super(props);

  /// Copy object for use in action
  HomeState getStateCopy();
}

/// UnInitialized
class UnHomeState extends HomeState {
  @override
  String toString() => 'UnHomeState';

  @override
  HomeState getStateCopy() {
    return UnHomeState();
  }
}

/// Initialized
class InHomeState extends HomeState {
  final SpeakersData speakersData;
  final EventsData eventsData;

  InHomeState({@required this.speakersData, @required this.eventsData}) : super([speakersData, eventsData]);
  @override
  String toString() => 'InHomeState';

  @override
  HomeState getStateCopy() {
    return InHomeState(speakersData: this.speakersData, eventsData: this.eventsData);
  }
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  ErrorHomeState(this.errorMessage);

  @override
  String toString() => 'ErrorHomeState';

  @override
  HomeState getStateCopy() {
    return ErrorHomeState(this.errorMessage);
  }
}
