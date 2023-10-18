class Profiles {
  final String name;
  final String picUrl;
  final String username;
  final bool isTrack;

  Profiles(
      {required this.name,
      required this.picUrl,
      required this.username,
      required this.isTrack});

  factory Profiles.fromJson(Map<String, dynamic> json) {
    return Profiles(
      name: json['name'],
      picUrl: json['picUrl'],
      username: json['username'],
      isTrack: json['isTrack'],
    );
  }

  static Profiles getDefaultProfile() {
    return Profiles(
      name: '',
      picUrl: '',
      username: '',
      isTrack: false,
    );
  }
}
