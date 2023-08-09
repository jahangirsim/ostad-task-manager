import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/update_profile_screen.dart';

class UserProfileBannar extends StatelessWidget {
  const UserProfileBannar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const UpdateProfileScreen()));
      },
      child: const ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        tileColor: Colors.green,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://as1.ftcdn.net/v2/jpg/02/43/12/34/1000_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
          radius: 25,
        ),
        title: Text('User Name', style: TextStyle(color: Colors.white, fontSize: 14)),
        subtitle: Text('User Email', style: TextStyle(color: Colors.white, fontSize: 14)),
      ),
    );
  }
}