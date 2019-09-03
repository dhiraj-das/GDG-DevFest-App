class CompetitionsData {
  List<Competition> competitions;

  CompetitionsData({this.competitions});

  CompetitionsData.fromJson(Map<String, dynamic> json) {
    if (json['competitions'] != null) {
      competitions = new List<Competition>();
      json['competitions'].forEach((v) {
        competitions.add(Competition.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.competitions != null) {
      data['competitions'] = this.competitions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Competition {
  String competitionName;
  String competitionDesc;
  String competitionImage;
  String competitionInfo;
  String competitionId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String competitionSession;
  String sessionId;

  Competition(
      {this.competitionName,
        this.competitionDesc,
        this.competitionImage,
        this.competitionInfo,
        this.competitionId,
        this.fbUrl,
        this.twitterUrl,
        this.linkedinUrl,
        this.githubUrl,
        this.competitionSession,
        this.sessionId});

  Competition.fromJson(Map<String, dynamic> json) {
    competitionName = json['competition_name'];
    competitionDesc = json['competition_desc'];
    competitionImage = json['competition_image'];
    competitionInfo = json['competition_info'];
    competitionId = json['competition_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    competitionSession = json['competition_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['competition_name'] = this.competitionName;
    data['competition_desc'] = this.competitionDesc;
    data['competition_image'] = this.competitionImage;
    data['competition_info'] = this.competitionInfo;
    data['competition_id'] = this.competitionId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['competition_session'] = this.competitionSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Competition> competitions = [
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2Fscope.png?alt=media&token=15379f8e-03e2-4589-b031-0d33a2fd142d",
    competitionName: "Modus Operandi",
    competitionDesc: "By SCOPE: The Supply Chain & Operations club of VGSoM",
    competitionSession: "An excellent opportunity for students to experience real business issues related to operations management.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FE%20cell.jpeg?alt=media&token=848d18ae-d7a4-4664-a41c-cc66ee7c06b4",
    competitionName: "Srijan",
    competitionDesc: "By E-Cell: The Entrepreneurship club of VGSoM",
    competitionSession: "A unique opportunity for budding entrepreneurs to pitch their business ideas with venture capitalists and investors.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FQuiz%20Club.jpg?alt=media&token=67220df5-9d33-4614-9cb0-2d0540595990",
    competitionName: "Quizzard",
    competitionDesc: "By Quiz Club of VGSoM",
    competitionSession: "The Ultimate B-School Quiz. If you think you have what it takes, come, be a part of this challenge!",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FFinterest%20Logo%20New.jpg?alt=media&token=fca8ac75-ad34-4d03-bd3a-201b27a6155a",
    competitionName: "Bull’s Eye",
    competitionDesc: "By Finterest: The Finance club of VGSOM",
    competitionSession: "A virtual stock trading competition where participants will have to try to maximize the portfolio value as much as possible!",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FFinterest%20Logo%20New.jpg?alt=media&token=fca8ac75-ad34-4d03-bd3a-201b27a6155a",
    competitionName: "Mulyankan",
    competitionDesc: "By Finterest: The Finance club of VGSOM",
    competitionSession: "A unique opportunity for budding entrepreneurs to pitch their business ideas with venture capitalists and investors.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FTCC%20final%20logo.jpeg?alt=media&token=ec958acc-f343-4444-8b52-98efcb58b72f",
    competitionName: "Sumantran",
    competitionDesc: "By the Consulting club of VGSoM",
    competitionSession: "Sumantran - A hunt for the star consultant.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FMAD%20Logo.jpg?alt=media&token=1d82e8c6-8461-4507-b474-469b94d19d34",
    competitionName: "Leader’s Challenge",
    competitionDesc: "By MAD: The Marketing and Advertising Club of VGSoM",
    competitionSession: "An event that promises to draw the leaders of the future from the multitudes of the present.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FV%20flash%20logo.jpg?alt=media&token=121be289-55ec-4518-a486-e78472c34de7",
    competitionName: "Destello",
    competitionDesc: "By Flash: The Photography club of VGSoM",
    competitionSession: "The Photography Club presents its Flagship Event 'Destello'.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2Fdrishtee_logo.png?alt=media&token=b94c3fb6-b6a5-45fa-a79b-ca0a5620c772",
    competitionName: "Synergy",
    competitionDesc: "By Drishtee Capital",
    competitionSession: "An Investment Case study analysis event to test the finance and investment acumen and its application in real life situations.",
  ),
  Competition(
    competitionImage:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/clubs_committees%2FV%20flash%20logo.jpg?alt=media&token=121be289-55ec-4518-a486-e78472c34de7",
    competitionName: "Silence Speaks",
    competitionDesc: "By Flash: The Photography club of VGSoM",
    competitionSession: "A photography competition where we dare to tell a tale in the most creative way possible!",
  ),
];
