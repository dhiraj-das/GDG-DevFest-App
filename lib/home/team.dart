class Team {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String contribution;

  Team(
      {this.name,
      this.desc,
      this.job,
      this.image,
      this.speciality,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.contribution});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "S Vighna Raj",
    desc: "President",
    contribution: "",
    fbUrl: "https://www.facebook.com/vighna.raj.3",
    linkedinUrl: "https://www.linkedin.com/in/vighna-raj-572550ab/",
    image:
        "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/S-Vighna-Raj.jpg?alt=media&token=10d43ac9-df78-4962-9593-598eda38c4d3",
  ),
  Team(
    name: "Kedar Kulkarni",
    desc: "Vice-president",
    contribution: "",
    fbUrl: "https://www.facebook.com/kedar.kulkarni.1422",
    linkedinUrl: "https://www.linkedin.com/in/kedar-kulkarni-a2ab13ab/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Kedar%20Kulkarni.jpg?alt=media&token=e5814f3c-8bd8-476a-a634-20e8f4ba5cdc",
  ),
  Team(
    name: "Wagh Abhishek Satish",
    desc: "Treasurer",
    contribution: "",
    fbUrl: "https://www.facebook.com/abhishek.wagh.79",
    linkedinUrl: "https://www.linkedin.com/in/abhishek-wagh-3b29499b",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Abhishek%20Wagh.jpeg?alt=media&token=fc4e48d2-c5e7-4693-9c58-b530261b7128",
  ),
  Team(
    name: "Anupam Sarangal",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/anupam.sarangal",
    linkedinUrl: "https://www.linkedin.com/in/anupam-sarangal-45271a91/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Anupam.jpg?alt=media&token=d79dc6c9-b292-40e9-b289-94c7ef945ccd",
  ),
  Team(
    name: "Arnav Mohan",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/arnav.mohan.1",
    linkedinUrl: "https://www.linkedin.com/in/arnav-mohan/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Arnav%20Mohan.jpg?alt=media&token=4a315b90-0eb5-4b0f-9b7a-c758738db6e9",
  ),
  Team(
    name: "Boddeti Bhargava",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/bhargava235",
    linkedinUrl: "https://www.linkedin.com/in/bhargava-boddeti-0b315941",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Bhargava%20Boddeti.jpeg?alt=media&token=18c2ea38-4166-4132-a477-f6fc11e5ce07",
  ),
  Team(
    name: "G Teja",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/tejareddy.g.7",
    linkedinUrl: "linkedin.com/in/teja-gajulapalli-340aa388",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/GTeja_Profilepic.jpeg?alt=media&token=99b2d25a-e11e-48c1-b4fd-069810f3b9db",
  ),
  Team(
    name: "Kushal Choudhury",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/kushal.choudhury.54",
    linkedinUrl: "linkedin.com/in/kushal-choudhury-039bba166",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Kushal_Choudhury.jpg?alt=media&token=e7cce2ff-e536-4655-be3b-ce634bf3e9b1",
  ),
  Team(
    name: "Mohan Kalkal",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/mohan.kalkal",
    linkedinUrl: "https://www.linkedin.com/in/mohan-kalkal-58738565",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Mohan%20Kalkal.jpg?alt=media&token=05d85352-dada-4669-846b-2c9c6a682bf3",
  ),
  Team(
    name: "Mohit Gupta",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/guptamohit089",
    linkedinUrl: "www.linkedin.com/in/mohit-gupta-850978b0",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Mohit%20Gupta.jpg?alt=media&token=d5d87534-8715-414f-86ee-72e4a8cb97d9",
  ),
  Team(
    name: "Nishant Arora",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/nishant.arora.16940",
    linkedinUrl: "www.linkedin.com/in/nishant-arora-54096b119",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Nishant%20Arora.jpg?alt=media&token=e362a7b6-bdde-4c8f-8a23-62195bcf19bc",
  ),
  Team(
    name: "Pratik Rajkumar Deolasi",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/pratikdeolasi456",
    linkedinUrl: "www.linkedin.com/in/pratik-deolasi-66554379",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/photo.jpg?alt=media&token=8d31f1ec-37fa-442f-95df-7bf36a833b9b",
  ),
  Team(
    name: "Rishabh Panchal",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/rishabh.panchal.98",
    linkedinUrl: "https://www.linkedin.com/in/rishabhpanchal/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Rishabh%20Panchal.png?alt=media&token=9e8de334-e7de-468e-9473-6a5328070652",
  ),
  Team(
    name: "Rohit Gupta",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/aggarwal.rohitgupta",
    linkedinUrl: "https://www.linkedin.com/in/rohit-gupta-339293a5/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/gupta.png?alt=media&token=754d672d-616f-4c1d-a0ba-b9a506abab26",
  ),
  Team(
    name: "Shashank Dhawale",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/shashank.dhawale.7",
    linkedinUrl: "https://www.linkedin.com/in/shashank-dhawale-ab8712a0/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Shashank%20Dhawale.jpg?alt=media&token=f6f0d435-3a93-42ef-b52f-6c75b00cc5f5",
  ),
  Team(
    name: "Swati Solanki",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.linkedin.com/in/swati-solanki-74b85b85/",
    linkedinUrl: "https://www.facebook.com/swati.solanki.26",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Swati%20Solanki.jpg?alt=media&token=a31753ab-6257-4466-98a7-c32d53b85f78",
  ),
  Team(
    name: "Vijay Bhaskara Rao",
    desc: "Coordinator",
    contribution: "",
    fbUrl: "https://www.facebook.com/vijay.bhaskar.735507",
    linkedinUrl: "https://www.linkedin.com/in/surisettyvijay",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Vijay%20Bhaskar.jpg?alt=media&token=bca72b25-50d8-4c23-b200-40157e73f00a",
  ),
  Team(
    name: "Aashwin Sonker",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/ashwin.sonker1",
    linkedinUrl: "https://www.linkedin.com/in/aashwin-sonker-18025a146/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Aashwin%20Sonker.jpg?alt=media&token=94797f33-03fd-4db6-bcf8-1490650e49d4",
  ),
  Team(
    name: "Aditya Garg",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/aditya.garg.56",
    linkedinUrl: "https://www.linkedin.com/in/aditya-garg-7784b7116",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Aditya%20Garg.jpg?alt=media&token=5a0b945a-d02f-4e6c-8733-e87436e37ec1",
  ),
  Team(
    name: "Akash Kumar Sahu",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/akash.sahu.37017",
    linkedinUrl: "https://www.linkedin.com/in/akash-sahu1995",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Akash%20Kumar%20Sahu.jpg?alt=media&token=a41efe9d-e1a3-49dc-9050-e02cabbd5161",
  ),
  Team(
    name: "Deep Shah",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/deep.shah.589583",
    linkedinUrl: "https://www.linkedin.com/in/deep-s-9929ab88",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Deep%20Shah.jpg?alt=media&token=56891923-1789-4e58-b735-bb0664bf2933",
  ),
  Team(
    name: "Gaganpreet Singh",
    desc: "Member",
    contribution: "",
    fbUrl: "",
    linkedinUrl: "https://www.linkedin.com/in/gaganpreetsw",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Gaganpreet%20Singh.jpg?alt=media&token=3134196c-8562-41b4-9270-7896c8cf46f4",
  ),
  Team(
    name: "Garima Agarwal",
    desc: "Member",
    contribution: "",
    fbUrl: "https://facebook.com/garima.agarwal.263",
    linkedinUrl: "https://www.linkedin.com/in/garima-agarwal-030b85124 ",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Garima%20Agarwal.jpg?alt=media&token=2ee01fee-4df8-4537-83c7-e6c2f76b9152",
  ),
  Team(
    name: "Himanshu Jain",
    desc: "Member",
    contribution: "",
    fbUrl: "",
    linkedinUrl: "https://www.linkedin.com/in/hjbhs464",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/HimanshuJain.jpg?alt=media&token=930ec6f6-38fc-47a1-9ed1-41db5d436951",
  ),
  Team(
    name: "Kanika Yadav",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/kanika.yadav.562",
    linkedinUrl: "https://www.linkedin.com/in/kanika-yadav-3172986b",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/KanikaYadav.jpg?alt=media&token=348f8d5f-1c7b-44cb-8e24-2423b990837c",
  ),
  Team(
    name: "Karthik Dasari",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/karthik.dasari.1806?ref=bookmarks",
    linkedinUrl: "https://www.linkedin.com/in/karthik-dasari-a9200a119",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Karthik%20Dasari.jpg?alt=media&token=1ac11520-a89f-4320-b7b7-87aab4784ed3",
  ),
  Team(
    name: "Laxmi Raje",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/laxmi.raje",
    linkedinUrl: "https://www.linkedin.com/in/laxmi-raje-94aba2a5",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Laxmi%20Raje.jpg?alt=media&token=60562d5a-2266-4f30-adb5-ff26b548f89a",
  ),
  Team(
    name: "Priyanka KM Singh",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/priyanka.singh.792197?ref=bookmarks",
    linkedinUrl: "https://www.linkedin.com/in/priyanka-km-singh-b79b937a",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Priyanka_KM_Singh.jpg?alt=media&token=2116d7ff-a1fe-4b88-b7e9-bb15ccec3324",
  ),
  Team(
    name: "Samuel David",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/samuel.david.77715",
    linkedinUrl: "https://www.linkedin.com/in/samuel-david-b3a408111",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Samuel%20David.jpg?alt=media&token=c5b94c3b-f358-44de-99c6-86e8bd1422bf",
  ),
  Team(
    name: "Shimon P Silvester",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/shimon369",
    linkedinUrl: "https://www.linkedin.com/in/shimon-p-silvester",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Shimon%20P%20Silvester.jpg?alt=media&token=6c3b89d4-453d-45d4-9ebd-ba71b3e7cef4",
  ),
  Team(
    name: "Shreyash Wankhade",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/shreyash.wankhade.5",
    linkedinUrl: "https://www.linkedin.com/in/shreyash-wankhade-84a1a9108",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Shreyash%20Wankhade.JPG?alt=media&token=1a107ced-6af7-497a-ba10-95f179a90482",
  ),
  Team(
    name: "Shubham Paul",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/VEERARYANS",
    linkedinUrl: "https://www.linkedin.com/in/shubham-paul-761609a2/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Shubham%20Paul%20(2).jpg?alt=media&token=e4b3607d-ea35-4ab0-ae9e-258f6930077b",
  ),
  Team(
    name: "Vignesh V",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/vicky.venkataraman",
    linkedinUrl: "https://www.linkedin.com/in/vignesh-venkataraman-579888a3",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/VigneshV.JPG?alt=media&token=8411b5b2-275d-452a-91ff-e588e7b61509",
  ),
  Team(
    name: "Vishnu Prasanth",
    desc: "Member",
    contribution: "",
    fbUrl: "https://www.facebook.com/vishnuprasanth94",
    linkedinUrl: "https://www.linkedin.com/in/vishnu-prasanth-9a9838105/",
    image:
    "https://firebasestorage.googleapis.com/v0/b/purvodaya-app.appspot.com/o/Vishnu%20Prasanth%20R.jpg?alt=media&token=b737a03f-503b-4d43-89cc-49e3b3a09b85",
  ),
];
