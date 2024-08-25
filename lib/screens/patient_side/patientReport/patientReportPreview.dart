import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printing/printing.dart';
import 'package:xerobuddy_app/screens/patient_side/patientReport/MakePatientReport.dart';

class PatientReportPreview extends StatelessWidget {
  const PatientReportPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff8359e3),
        title: Text("Report Preview", style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: PdfPreview(
          build: (context) => makePatientReport()
      ),
    );
  }
}