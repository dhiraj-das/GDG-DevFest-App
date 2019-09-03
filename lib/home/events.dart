class EventsData {
  List<Event> events;

  EventsData({this.events});

  EventsData.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = new List<Event>();
      json['events'].forEach((v) {
        events.add(Event.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.events != null) {
      data['events'] = this.events.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Event {
  String eventName;
  String eventDesc;
  String eventImage;
  String eventInfo;
  String eventId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String eventSession;
  String sessionId;

  Event(
      {this.eventName,
      this.eventDesc,
      this.eventImage,
      this.eventInfo,
      this.eventId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.eventSession,
      this.sessionId});

  Event.fromJson(Map<String, dynamic> json) {
    eventName = json['speaker_name'];
    eventDesc = json['speaker_desc'];
    eventImage = json['speaker_image'];
    eventInfo = json['speaker_info'];
    eventId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    eventSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.eventName;
    data['speaker_desc'] = this.eventDesc;
    data['speaker_image'] = this.eventImage;
    data['speaker_info'] = this.eventInfo;
    data['speaker_id'] = this.eventId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.eventSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Event> events = [
  Event(
    eventImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    eventName: "Leadership Summit",
    eventDesc: "",
    eventSession: "Talk: Getting Started With Flutter For Web",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Event(
    eventImage:
    "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    eventName: "Pawan Kumar",
    eventDesc: "Google Developer Expert, Flutter",
    eventSession: "Talk: Getting Started With Flutter For Web",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
];
