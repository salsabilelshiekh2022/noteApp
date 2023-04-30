import 'package:flutter/material.dart';
import 'package:note_app/views/pages/edit_note_page.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNotePage();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: const Color(0xffFFCD7B),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                'Flutter tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build your carrer with tharwat samy ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, size: 24, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              'May 21,  2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
