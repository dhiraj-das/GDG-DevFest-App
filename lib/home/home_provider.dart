import 'package:flutter_devfest/home/events.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/network/i_client.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';

abstract class IHomeProvider {
  Future<SpeakersData> getSpeakers();
  Future<EventsData> getEvents();
}

class HomeProvider implements IHomeProvider {
  IClient _client;

  static final String kConstGetSpeakersUrl =
      "${Devfest.baseUrl}/speaker-kol.json";

  HomeProvider() {
    _client = Injector().currentClient;
  }

  @override
  Future<SpeakersData> getSpeakers() async {
    var result = await _client.getAsync(kConstGetSpeakersUrl);
    if (result.networkServiceResponse.success) {
      SpeakersData res = SpeakersData.fromJson(result.mappedResult);
      return res;
    }

    throw Exception(result.networkServiceResponse.message);
  }

  @override
  Future<EventsData> getEvents() async {
    var result = await _client.getAsync(kConstGetSpeakersUrl);
    if (result.networkServiceResponse.success) {
      EventsData res = EventsData.fromJson(result.mappedResult);
      return res;
    }

    throw Exception(result.networkServiceResponse.message);
  }
}
