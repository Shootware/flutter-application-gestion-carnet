import 'package:flutter/material.dart';

class PatientManagementScreen extends StatefulWidget {
  @override
  _PatientManagementScreenState createState() => _PatientManagementScreenState();
}

class _PatientManagementScreenState extends State<PatientManagementScreen> {
  final List<String> _patients = [];
  final TextEditingController _patientNameController = TextEditingController();

  void _addPatient() {
    if (_patientNameController.text.isNotEmpty) {
      setState(() {
        _patients.add(_patientNameController.text);
        _patientNameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Patients'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _patientNameController,
              decoration: InputDecoration(labelText: 'Nom du patient'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _addPatient,
              child: Text('Ajouter Patient'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _patients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_patients[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
