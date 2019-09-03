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
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2Fcmi_logo.jpeg?alt=media&token=8f5e019e-8a7d-4ade-b7ba-a38cb6962c4d",
    eventName: "Leadership Summit",
    eventDesc: "",
    eventSession: "Ideas and opinions on the latest business trends discussed by the eminent business personalities to inspire young students.",
  ),
  Event(
    eventImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FAlumni.jpg?alt=media&token=9c5c5feb-5cb7-4e30-a2c5-1bfe512e57ef",
    eventName: "Reminiscence",
    eventDesc: "",
    eventSession: "Inviting alumni to share their success stories with the students and give the alumni a chance to relive their memories.",
  ),
  Event(
    eventImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FSaamanjasya%20Logo.jpg?alt=media&token=2367dd35-55c2-4510-94fb-ac9e6f7e1606",
    eventName: "Marathon",
    eventDesc: "",
    eventSession: "Inculcating a sense of responsibility for society by organizing CSR activities.",
  ),
];
