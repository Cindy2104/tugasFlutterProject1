import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageResigter extends StatefulWidget {
  const PageResigter({super.key});

  @override
  State<PageResigter> createState() => _PageResigterState();
}

class _PageResigterState extends State<PageResigter> {
  TextEditingController nidn = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController Alamat = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController tgllahir = TextEditingController();
  String? valPendidikan, valStatus, inputForm;
  final _formKey = GlobalKey<FormState>();

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (pickDate != null) {
      tgllahir.text = DateFormat("dd-MM-yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Form Dosen", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "NIDN",
                  controller: nidn,
                  hintText: "2301092026",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "Nama",
                  controller: nama,
                  hintText: "Nawaf Akbar",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "Tanggal Lahir",
                  controller: tgllahir,
                  hintText: "dd/mm/yy",
                  textInputType: TextInputType.datetime,
                  onTap: () {
                    selectDate();
                  },
                ),
                SizedBox(height: 15),
                Text("Pendidikan", style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: DropdownButton(
                    value: valPendidikan,
                    underline: Container(),
                    isExpanded: true,
                    items:
                        ["S1", "S2", "S3"].map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(e),
                            ),
                          );
                        }).toList(),
                    onChanged: (val) {
                      setState(() {
                        valPendidikan = val;
                      });
                    },
                  ),
                ),
                SizedBox(height: 15),
                Text("Status", style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Row(
                  children: [
                    CustomeRadio(
                      value: "Menikah",
                      groupValue: valStatus.toString(),
                      onChanged: (val) {
                        setState(() {
                          valStatus = val;
                        });
                      },
                    ),
                    CustomeRadio(
                      value: "Single",
                      groupValue: valStatus.toString(),
                      onChanged: (val) {
                        setState(() {
                          valStatus = val;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "Alamat",
                  controller: Alamat,
                  hintText: "Padang",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     minimumSize: Size(double.infinity, 50),
                //     backgroundColor: Colors.blue,
                //   ),
                //   onPressed: () {},
                //   child: Text("SAVE", style: TextStyle(color: Colors.white)),
                // ),
                CostumeButton(
                  bgcolor: Colors.red,
                  labelButton: "Save",
                  onPressed: () {
                    setState(() {
                      //cek validasi input
                      if (_formKey.currentState!.validate()) {
                        //cek input
                        if (valPendidikan != null && valStatus != null) {
                          inputForm =
                              "NIDN : ${nidn.text}\n"
                              "Nama : ${nama.text}\n"
                              "Tanggal Lahir : ${tgllahir.text}\n"
                              "Pendidikan : ${valPendidikan.toString()}\n"
                              "Status : ${valStatus.toString()}\n"
                              "Alamat : ${Alamat.text}\n";
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(inputForm.toString())),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Silahkan pilih Pendidikan dan Status",
                              ),
                            ),
                          );
                        }
                      }
                    });
                  },
                  labelColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostumeInput extends StatelessWidget {
  final String labelInput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final VoidCallback? onTap;

  const CostumeInput({
    super.key,
    required this.labelInput,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelInput, style: TextStyle(fontSize: 18)),
        SizedBox(height: 5),
        TextFormField(
          controller: controller, //mendapatkan input dari user
          validator: (val) {
            return val!.isEmpty ? "Input tidak boleh kosong" : null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: textInputType,
          obscureText: obscureText,
          onTap: () {
            //event ketika klik input
            onTap?.call();
          },
        ),
      ],
    );
  }
}

class CustomeRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const CustomeRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: (val) {
          if (val != null) {
            onChanged(val);
          }
        },

        title: Text(value),
      ),
    );
  }
}

class CostumeButton extends StatelessWidget {
  final Color bgcolor;
  final String labelButton;
  final VoidCallback onPressed;
  final Color labelColor;
  const CostumeButton({
    super.key,
    required this.bgcolor,
    required this.labelButton,
    required this.onPressed,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: bgcolor,
      ),
      onPressed: () {
        onPressed.call();
      },
      child: Text(labelButton, style: TextStyle(color: labelColor)),
    );
  }
}
