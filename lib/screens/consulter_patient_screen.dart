import 'package:flutter/material.dart';

class ConsulterPatientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consulter Patient'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Table(
            border: TableBorder.all(width: 1.0, color: Colors.black),
            children: [
              _buildTableRow('Nom', 'John Doe'),
              _buildTableRow('Prénom', 'Jane'),
              _buildTableRow('Date de Naissance', '01/01/1980'),
              _buildTableRow('Situation Matrimoniale', 'Marié(e)'),
              // Ajoutez d'autres lignes pour d'autres informations du patient
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[200],
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.white,
            child: Text(value),
          ),
        ),
      ],
    );
  }
}
