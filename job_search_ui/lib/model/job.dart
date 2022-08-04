class Job {
  final String logoUrl;
  final String company;
  final String title;
  final String time;
  final String location;
  final List<String> req;

  Job(this.company, this.logoUrl, this.title, this.location, this.time,
      this.req);

  static List<Job> generatedJobList() {
    return [
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
          'A creative eye, good imagination, and vision.',
          'A firm grasp of market trends and consumer preferences.',
          'Practical experience using computer-aided design software.',
          'Good technical and IT skills.'
        ],
      ),
      Job(
        'Airbnb Inc',
        'assets/images/airbnb_logo.png',
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
      Job(
        'Linkedin',
        'assets/images/linkedin_logo.png',
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
    ];
  }
}
