import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.duration,
  });

  final String image;
  final String title;
  final String subtitle;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(image),
      ),
      title: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.check_circle,
            size: 16,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 4),
          const Text('•'),
          const SizedBox(width: 4),
          Text(duration),
        ],
      ),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
