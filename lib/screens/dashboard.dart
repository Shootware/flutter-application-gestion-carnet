import 'package:flutter/material.dart';
import 'add_patient_form.dart';
import 'prendre_rendez_vous_screen.dart';
import 'consulter_patient_screen.dart'; // Importer le nouvel écran Consulter Patient
import 'prendre_rendez_vous_screen.dart'; // Importer le nouvel écran Prendre Rendez-vous

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tableau de bord'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Ajouter Patient'),
              onTap: () {
                Navigator.pop(context); // Ferme le drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPatientForm()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_search),
              title: Text('Consulter Patient'),
              onTap: () {
                Navigator.pop(context); // Ferme le drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConsulterPatientScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Prendre Rendez-vous'),
              onTap: () {
                Navigator.pop(context); // Ferme le drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrendreRendezVousScreen()),
                );
              },
            ),
            // Autres éléments de menu...
          ],
        ),
      ),
      // Le reste de votre code pour le tableau de bord
      body: Center(
        child: Text('Contenu principal du tableau de bord'),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  DashboardButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Mon Application',
    home: DashboardScreen(),
  ));
}
