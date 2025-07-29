import 'package:flutter/material.dart';
import 'package:note_app_test/ui/screens/home_screen.dart';
import 'package:note_app_test/ui/widgets/icon_container.dart';
import 'package:note_app_test/utils/constants/colors.dart';

class NewNote extends StatefulWidget {
  const NewNote({super.key});

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  final Map<String, Color> _colorOptions = MyColors.colorOptions;

  Color? _noteColor = null;
  String _selectedColorName = "";

  void _showColorPickerSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 15,
            children: _colorOptions.entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _noteColor = entry.value;
                    _selectedColorName = entry.key;
                  });
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: entry.value,
                  radius: 25,
                  child: _selectedColorName == entry.key
                      ? const Icon(Icons.check, color: Colors.black)
                      : null,
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  confirmSaving() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Icon(Icons.info_outline, size: 40, color: Colors.grey),
          content: const Text(
            'Save changes ?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (_) => false,
              ),
              child: const Text('Discard'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // save note
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (_) => false,
                );
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: _noteColor,
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () =>
                _titleController.text.isEmpty && _contentController.text.isEmpty
                ? Navigator.pop(context)
                : confirmSaving(),
            child: const IconContainer(icon: Icons.arrow_back_ios_new_rounded),
          ),
        ),
        actions: [
          // Eye icon to show color picker bottom sheet
          GestureDetector(
            onTap: _showColorPickerSheet,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: IconContainer(icon: Icons.remove_red_eye),
            ),
          ),

          // Save icon
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: IconContainer(icon: Icons.save),
            ),
          ),
        ],
      ),

      body: Container(
        color: _noteColor,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: isDark ? Colors.grey.shade500 : Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: isDark ? Colors.grey.shade200 : Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _contentController,
                decoration: InputDecoration(
                  hintText: 'Write your note...',
                  hintStyle: TextStyle(
                    color: isDark ? Colors.grey.shade500 : Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(
                  color: isDark ? Colors.grey.shade100 : Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
