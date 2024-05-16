class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
  });
}

//#########
// Hobby Projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/VP-Opencv.png',
    title: 'Virtual Painter Using OPEN-CV',
    subtitle:
        'This ia a Prototype that uses camera to detect finger to draw on non-touch screen devices',
    githubLink: 'https://github.com/Sripathiyadav/OPEN-CV.git',
  ),
  ProjectUtils(
    image: 'assets/projects/Splash screen.png',
    title: 'ToDo',
    subtitle:
        'Just a Todo app can be used for remembering list of things that needs to be done',
    githubLink: 'https://github.com/Sripathiyadav/ToDo',
  ),
];

List<ProjectUtils> adacamicProjectsUtils = [
  ProjectUtils(
    image: 'assets/projects/major.png',
    title: 'Facial Expression Detection',
    subtitle: 'Facial Expression detection on spatial data using CNN & RNN',
    githubLink:
        'https://github.com/Sripathiyadav/Automatic-Facial-Expression-Recognition-Using-Features-Extraction-On-Spatial-data-Using-Cnn-Rnn.git',
  ),
  ProjectUtils(
    image: 'assets/projects/mini.png',
    title: 'Cyber Security Knowledge',
    subtitle:
        'Toward Detection and Attribution of Cyber-Attacks in IoT-enabled Cyber-physical Systems',
    githubLink:
        'https://github.com/Sripathiyadav/Toward-Detection-and-Attribution-of-Cyber-Attacks-in-IoT-enabled-Cyber-physical-Systems-.git',
  ),
];
