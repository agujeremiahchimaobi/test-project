import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/custom_widgets.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('images/header.png'),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    SizedBox(width: 80),
                    Text(
                      'Create Rhapsave',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 300),
          ElevatedButton(
            child: const Text('Press me'),
            onPressed: () {
              showModalBottomSheet(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Awesome',
                            style: GoogleFonts.poppins(
                                fontSize: 28, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'What percentage of your Income would you like to save?',
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Percent(text: '60', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '70', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '80', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '90', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '100', color: Colors.grey.shade200)
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Percent(text: '10', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '20', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(
                                  text: '30', color: Colors.orange.shade500),
                              const SizedBox(width: 7),
                              Percent(text: '40', color: Colors.grey.shade200),
                              const SizedBox(width: 7),
                              Percent(text: '50', color: Colors.grey.shade200)
                            ],
                          ),
                          const SizedBox(height: 18),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.grey,
                                contentPadding: EdgeInsets.all(5),
                                hintText:
                                    '                                 Enter Manually',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF64F00),
                            ),
                            child: Center(
                              child: Text(
                                'Create Save',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
