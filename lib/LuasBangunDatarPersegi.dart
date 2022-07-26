import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LuasBangunDatarPersegi extends StatefulWidget {
  const LuasBangunDatarPersegi({Key? key}) : super(key: key);

  @override
  State<LuasBangunDatarPersegi> createState() => _LuasBangunDatarPersegiState();
}

class _LuasBangunDatarPersegiState extends State<LuasBangunDatarPersegi> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrPanjang,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Panjang',
              ),
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrLebar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Lebar',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (ctrPanjang.text.isNotEmpty &&
                          ctrLebar.text.isNotEmpty) {
                        ctrHasil.text = (int.parse(ctrPanjang.text) *
                                int.parse(ctrLebar.text))
                            .toString();
                      } else {
                        Alert(
                          context: context,
                          type: AlertType.error,
                          title: "Masukan Angka ke Kolom yang kosong",
                          //desc: "Selamat anda berhasil login",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Selanjutnya",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ).show();
                        return;
                      }
                    });
                  },
                  child: Text("Submit")),
            )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Hasil : ${ctrHasil.text}cm",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
