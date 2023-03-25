import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 290,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
						height: 250,
            child: DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/side_menu_home.png'),
                ),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(15),
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.all(15),
            leading: Icon(Icons.my_library_books_outlined),
            title: Text('Relatórios'),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.all(15),
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () => {Navigator.of(context).pop()},
          ),
					ListTile(
						contentPadding: EdgeInsets.all(15),
						leading: Icon(Icons.star_border_outlined),
						title: Text('Avalie-nos'),
						onTap: (){},
					),					
        ],
      ),
    );
  }
}
