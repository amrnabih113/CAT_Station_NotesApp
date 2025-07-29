import 'package:flutter/material.dart';
import 'package:note_app_test/models/notes_model.dart';
import 'package:note_app_test/repo/notes_repo.dart';
import 'package:note_app_test/ui/screens/new_note.dart';
import 'package:note_app_test/ui/widgets/icon_container.dart';
import 'package:note_app_test/ui/widgets/notes_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes", style: TextStyle(fontSize: 30)),
        actions: [
          Row(
            spacing: 10,
            children: [
              IconContainer(icon: Icons.search),
              IconContainer(icon: Icons.info_outline),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewNote()),
        ),
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              notes.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/no_notes.png"),
                        SizedBox(height: 20),
                        Text(
                          "Create your first note",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    )
                  : ListView.separated(
                      separatorBuilder: (context, i) =>
                          const SizedBox(height: 10),
                      itemBuilder: (context, i) {
                        return Dismissible(
                          key: Key(notes[i].title),
                          onDismissed: (direction) {
                            notes.removeAt(i);
                          },

                          direction: DismissDirection.endToStart,
                          background: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(Icons.delete, color: Colors.white),
                              ),
                            ),
                          ),
                          child: NotesContainer(note: notes[i]),
                        );
                      },
                      itemCount: notes.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
