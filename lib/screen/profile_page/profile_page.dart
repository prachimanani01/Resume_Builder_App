import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder_app/screen/details_page/details_page.dart';

import '../../global/routes/routes.dart';
import '../education_page/education_page.dart';
import '../experience_page/experience_page.dart';
import '../skill_page/skill_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Profile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 1,
            )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  leading: Image.asset('assets/profile.png'),
                  title: Text(
                    'User',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff221851),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'profession',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.details_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Personal Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.education_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.school_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.experience_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.business_center_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.skill_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.verified_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Skills',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.language_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.language,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Languages',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.certificate_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.workspace_premium,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Certificates',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 15,
                      //   ),
                      //   child: ListTile(
                      //     leading: Container(
                      //       decoration: BoxDecoration(
                      //           color: Color(0xffe8e6f5),
                      //           borderRadius: BorderRadius.circular(8)),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Icon(
                      //           Icons.accessibility,
                      //           color: Color(0xff736d97),
                      //         ),
                      //       ),
                      //     ),
                      //     title: Text(
                      //       'Reference',
                      //       style: TextStyle(
                      //           fontSize: 20,
                      //           color: Color(0xff221851),
                      //           letterSpacing: 1,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //     trailing: Icon(
                      //       Icons.arrow_forward_ios,
                      //       color: Color(0xff8f88b6),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.hobbie_page);
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.sailing,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Hobbies',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, right: 12),
                            child: FloatingActionButton(
                              onPressed: () {
                                log("PDF View");
                                generatePdf();
                              },
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> generatePdf() async {
  final pdf = pw.Document();
  // final img = await imageFromAssetBundle('assets/img/1.png');
  // final img2 = await imageFromAssetBundle('assets/img/2.png');
  // final img3 = await imageFromAssetBundle('assets/img/3.png');
  // final img4 = await imageFromAssetBundle('assets/img/4.png');
  final image = pw.MemoryImage(imagepath!.readAsBytesSync());
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      var txtHob;
      var txtLan;
      return pw.Center(
        child: pw.Row(children: [
          pw.SizedBox(
            width: 350,
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Row(children: [
                    pw.Container(
                        height: 130,
                        width: 130,
                        decoration: pw.BoxDecoration(color: PdfColors.grey),
                        child: pw.Image(image, fit: pw.BoxFit.cover)),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 20),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(txtfirst_name.text,
                                style: pw.TextStyle(
                                    color: PdfColors.amber,
                                    fontSize: 30,
                                    fontWeight: pw.FontWeight.bold)),
                            pw.Text(
                              txtlast_name.text,
                              style: pw.TextStyle(
                                  fontSize: 30, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              txtProfession.text,
                              style: pw.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ]),
                    )
                  ]),
                  pw.SizedBox(height: 30),
                  pw.Text('EXPERIENCE',
                      style: pw.TextStyle(
                          fontSize: 25, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(
                      width: 70,
                      child: pw.Divider(color: PdfColors.amber, thickness: 4)),
                  pw.SizedBox(height: 30),
                  pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Column(children: [
                          pw.Text(txtTime_st.text,
                              style: pw.TextStyle(color: PdfColors.grey)),
                          pw.SizedBox(height: 15),
                          pw.Text(txtTime_end.text,
                              style: pw.TextStyle(color: PdfColors.grey)),
                        ]),
                        pw.SizedBox(width: 40),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                txtCompany.text,
                              ),
                              pw.SizedBox(height: 15),
                              pw.Text(txtPosition.text,
                                  style: pw.TextStyle(color: PdfColors.grey)),
                              pw.SizedBox(height: 15),
                              pw.Text(txtDescription.text,
                                  style: pw.TextStyle(color: PdfColors.grey)),
                            ])
                      ]),
                  pw.SizedBox(height: 30),
                  pw.Text('EDUCATION',
                      style: pw.TextStyle(
                          fontSize: 25, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(
                      width: 70,
                      child: pw.Divider(color: PdfColors.amber, thickness: 4)),
                  pw.SizedBox(height: 30),
                  pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Column(children: [
                          pw.Text(txtStart_date.text,
                              style: pw.TextStyle(color: PdfColors.grey)),
                          pw.SizedBox(height: 15),
                          pw.Text(txtEnd_date.text,
                              style: pw.TextStyle(color: PdfColors.grey)),
                        ]),
                        pw.SizedBox(width: 40),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                txtStudy.text,
                              ),
                              pw.SizedBox(height: 15),
                              pw.Text(txtInstitute.text,
                                  style: pw.TextStyle(color: PdfColors.grey)),
                            ])
                      ]),
                ]),
          ),
          pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
            pw.Text('CONTACT',
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(
                width: 70,
                child: pw.Divider(color: PdfColors.amber, thickness: 4)),
            pw.SizedBox(height: 10),
            // pw.Image(img),
            pw.Text(txtNumber.text, style: pw.TextStyle(color: PdfColors.grey)),
            pw.SizedBox(height: 15),
            // pw.Image(img2),
            pw.Text(txtEmail.text, style: pw.TextStyle(color: PdfColors.grey)),
            pw.SizedBox(height: 15),
            // pw.Image(img3),
            pw.Text(txtPortfolio.text,
                style: pw.TextStyle(color: PdfColors.grey)),
            pw.SizedBox(height: 15),
            // pw.Image(img4),
            pw.Text(txtAddress.text,
                style: pw.TextStyle(color: PdfColors.grey)),
            pw.SizedBox(height: 30),
            pw.Text('SKILLS',
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(
                width: 70,
                child: pw.Divider(color: PdfColors.amber, thickness: 4)),
            pw.SizedBox(height: 10),
            pw.Row(children: [
              pw.Text(txtSkills.text,
                  style: pw.TextStyle(color: PdfColors.grey)),
              pw.SizedBox(width: 20),
              pw.SizedBox(
                  width: 50,
                  child: pw.Divider(color: PdfColors.amber, thickness: 4)),
            ]),
            pw.SizedBox(height: 30),
            pw.Text('LANGUAGES',
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(
                width: 70,
                child: pw.Divider(color: PdfColors.amber, thickness: 4)),
            pw.SizedBox(height: 10),
            pw.Text(txtLan.text, style: pw.TextStyle(color: PdfColors.grey)),
            pw.SizedBox(height: 30),
            pw.Text('HOBBIES',
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(
                width: 70,
                child: pw.Divider(color: PdfColors.amber, thickness: 4)),
            pw.SizedBox(height: 10),
            pw.Text(txtHob.text, style: pw.TextStyle(color: PdfColors.grey)),
          ])
        ]),
      );
    },
  ));
  await Printing.layoutPdf(
    onLayout: (format) => pdf.save(),
  );
}
