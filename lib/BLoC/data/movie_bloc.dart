class MovieBloc {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final int year;

  const MovieBloc({
    required this.title,
    required this.id,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}
