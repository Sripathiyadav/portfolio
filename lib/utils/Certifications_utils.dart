
class CertifificationUtils {
  final String image;
  final String title;
  final String? drivelink;

  CertifificationUtils({
    required this.image,
    required this.title,
    this.drivelink,
  });
}

//#########
// Certificates
List<CertifificationUtils> Certificates = [
  CertifificationUtils(
      image: 'assets/Certifications/internship.jpg',
      title: 'Internship Completion Certificate from WEDECOR',
          drivelink: 'https://drive.google.com/file/d/1AZw4dn3l9ytUBiIzZpljPBTTYFdUsLtb/view?usp=sharing',
          ),
  CertifificationUtils(
      image: 'assets/Certifications/forage.jpg',
      title: 'virtual internship on Data Visualization',
      drivelink: 'https://drive.google.com/file/d/1I7GXZMfn6wvO6PlevfrJjcpqEf550u3k/view?usp=sharing',
      ),
  CertifificationUtils(
      image: 'assets/Certifications/gcp.jpg',
      title: 'Certificate for completing labs and quests in GCP',
          drivelink: 'https://drive.google.com/file/d/1yARdtE5rXufwgGssRPQ_Tf-qSKJUSJIH/view?usp=sharing',
          ),
          CertifificationUtils(
      image: 'assets/Certifications/top_performer.jpg',
      title: 'Top Performer Certificate from HACKFORET codechef CMRTC ',
          drivelink: 'https://drive.google.com/file/d/1hb6eKjThLPbUfaEba_KWYXn8ufmf5THE/view?usp=sharing',
          ),
          CertifificationUtils(
      image: 'assets/Certifications/appriciation certificate.jpg',
      title: 'Certificate of Appriciation from HACKFORET codechef CMRTC',
          drivelink: 'https://drive.google.com/file/d/1Isf9du_VgqPO6lyevY-OwUc9zVo_3-28/view?usp=sharing',
          ),
          CertifificationUtils(
      image: 'assets/Certifications/into_cybersecurity.jpg',
      title: 'Introduction to Cyber Security from SimpliLearn',
          drivelink: 'https://drive.google.com/file/d/1j0HMuBnX8bS8tKEwcU_HpWNW5CkkwDtc/view?usp=sharing',
          ),
          CertifificationUtils(
      image: 'assets/Certifications/datascience.jpg',
      title: 'Data Science With Python',
          drivelink: 'https://drive.google.com/file/d/1h0RnS4TRMwH4Qy57ffDgixetU00Ru2TT/view?usp=sharing',
          ),
];
