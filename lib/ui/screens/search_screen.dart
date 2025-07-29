import 'package:flutter/material.dart';
import 'package:note_app_test/models/notes_model.dart';
import 'package:note_app_test/repo/notes_repo.dart';
import 'package:note_app_test/ui/widgets/icon_container.dart';
import 'package:note_app_test/ui/widgets/notes_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  final List<NotesModel> _searchResults = notes;

  void _clearSearch() {
    setState(() {
      _searchQuery = "";
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: IconContainer(icon: Icons.arrow_back_ios_new_rounded)),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          spacing: 15,
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      onChanged: (val) {
                        setState(() => _searchQuery = val.trim());
                      },
                      decoration: const InputDecoration(
                        hintText: "Search by the keyword...",
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  if (_searchQuery.isNotEmpty)
                    GestureDetector(
                      onTap: _clearSearch,
                      child: const Icon(Icons.close, color: Colors.grey),
                    ),
                ],
              ),
            ),

            // Body
            Expanded(
              child: Center(
                child: _searchQuery.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/no_search.png', // Replace with your image path
                            height: 200,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Search for notes by keyword.",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      )
                    : _searchResults.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/no_search.png', // Replace with your image path
                            height: 200,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Note not found. Try searching again.",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      )
                    : ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: _searchResults.length,
                        itemBuilder: (context, index) {
                          final note = _searchResults[index];
                          return NotesContainer(note: note);
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
