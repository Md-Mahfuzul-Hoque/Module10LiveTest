import 'package:flutter/material.dart';
import 'contact_list_page.dart';

class ContactListItem extends StatelessWidget {
  final Contact contact;

  const ContactListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          // Leading icon (Person avatar)
          leading: Icon(
            Icons.person,
            color: Colors.brown,
            size: 24,
          ),
          title: Text(
            contact.name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            contact.number,
            style: TextStyle(color: Colors.black54),
          ),
          trailing: Icon(
            Icons.call,
            color: Colors.blue.shade600,
          ),
          onTap: () {
          },
        ),
      ),
    );
  }
}