import 'package:flutter/material.dart';
import 'package:note_app_test/models/notes_model.dart';
import 'package:note_app_test/utils/constants/colors.dart';

class NotesContainer extends StatelessWidget {
  const NotesContainer({super.key, required this.note});

  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    final color = MyColors.getColor(note.color);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: color.computeLuminance() > 0.5
                  ? Colors.black
                  : Colors.white,
            ),
          ), // title
          const SizedBox(height: 10),
          Text(
            note.content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: color.computeLuminance() > 0.5
                  ? Colors.black
                  : Colors.white,
            ),
          ), // content
        ],
      ),
    );
  }
}
