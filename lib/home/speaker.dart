class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;
  int year;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerSession,
      this.sessionId,
        this.year,
      });

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    data['year'] = this.year;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2020%2Famitabh_kant.jpeg?alt=media&token=9e5c9113-5d31-4be2-8b8d-db289d05441f",
    speakerName: "Mr. Amitabh Kant",
    speakerDesc: "CEO, NITI Aayog",
    speakerSession: "Chief Guest",
    year: 2020,
  ),
  Speaker(
    speakerSession: "Chief Guest",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2019%2Fyunus.png?alt=media&token=7a8fb099-7a00-4f0a-9ae5-5601ed5bedea",
    speakerName: "Dr. Muhammad Yunus",
    speakerDesc: "Nobel Peace Prize Winner",
    year: 2019,
  ),
  Speaker(
    speakerSession: "Guest of Honour",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2019%2Fchandra-shekhar-ghosh.jpg?alt=media&token=1f5c3cb6-f950-4e89-91a2-dd761df848a5",
    speakerName: "Mr. Chandra Shekhar Ghosh",
    speakerDesc: "MD & CEO of Bandhan Bank Ltd.",
    year: 2019,
  ),
  Speaker(
    speakerSession: "Guest Speaker",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2019%2FBalaji-Viswanathan.png?alt=media&token=71292ff9-3849-4908-bddd-4b1d7bd840ca",
    speakerName: "Mr. Balaji Viswanathan",
    speakerDesc: "Most followed writer on Quora",
    year: 2019,
  ),
  Speaker(
    speakerSession: "",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2018%2Farundhati_bhattacharya.jpg?alt=media&token=3201d002-faeb-4ffd-a67a-29ac3d75f075",
    speakerName: "Mrs. Arundhati Bhattacharya",
    speakerDesc: "Chairman, State Bank of India",
    year: 2018,
  ),
  Speaker(
    speakerSession: "",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2018%2FDr.PAWAN-AGARWAL.jpg?alt=media&token=b7a931cc-bcbb-475b-880a-c3a7b538c86a",
    speakerName: "Dr. Pawan Agarwal",
    speakerDesc: "CEO, Mumbai Dabbawala Association",
    year: 2018,
  ),
  Speaker(
    speakerSession: "",
    speakerImage:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/guests%2F2018%2Frashmi_bansal.jpg?alt=media&token=fe252306-bc65-4759-a471-945548d40fdb",
    speakerName: "Mrs. Rashmi Bansal",
    speakerDesc: "Indian non-fiction writer, entrepreneur and youth expert",
    year: 2018,
  ),
];
