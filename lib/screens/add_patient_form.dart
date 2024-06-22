import 'package:flutter/material.dart';

class AddPatientForm extends StatefulWidget {
  @override
  _AddPatientFormState createState() => _AddPatientFormState();
}

class _AddPatientFormState extends State<AddPatientForm> {
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _dateNaissanceController = TextEditingController();
  final TextEditingController _lieuResidenceController = TextEditingController();
  final TextEditingController _situationMatrimonialeController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();

  void _submitForm() {
    // Implement logic to submit form data (e.g., send to backend, save locally)
    String nom = _nomController.text;
    String prenom = _prenomController.text;
    String dateNaissance = _dateNaissanceController.text;
    String lieuResidence = _lieuResidenceController.text;
    String situationMatrimoniale = _situationMatrimonialeController.text;
    String profession = _professionController.text;

    // Print or handle form data as needed
    print('Nom: $nom, Prénom: $prenom, Date de naissance: $dateNaissance, '
        'Lieu de résidence: $lieuResidence, Situation matrimoniale: $situationMatrimoniale, '
        'Profession: $profession');

    // You can navigate back after submitting the form
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter Patient'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _nomController,
              decoration: InputDecoration(labelText: 'Nom'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _prenomController,
              decoration: InputDecoration(labelText: 'Prénom'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un prénom';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _dateNaissanceController,
              decoration: InputDecoration(labelText: 'Date de naissance'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer une date de naissance';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _lieuResidenceController,
              decoration: InputDecoration(labelText: 'Lieu de résidence'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un lieu de résidence';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _situationMatrimonialeController,
              decoration: InputDecoration(labelText: 'Situation matrimoniale'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer une situation matrimoniale';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _professionController,
              decoration: InputDecoration(labelText: 'Profession'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer une profession';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Ajouter'),
            ),
          ],
        ),
      ),
    );
  }
}
