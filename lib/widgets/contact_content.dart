import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';

class ContactContent extends StatefulWidget {
  @override
  State<ContactContent> createState() => _ContactContentState();
}

class _ContactContentState extends State<ContactContent> {
  void _showdialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Thanks For Contact',style: TextStyle(color: quincy,fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: bgcolor,
        content: Text("Please Call us at +91 9582463393"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: quincy,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTextField('Full name*'),
                      SizedBox(height: 16),
                      _buildTextField('Email address*'),
                      SizedBox(height: 16),
                      _buildTextField('Contact number'),
                      SizedBox(height: 16),
                      _buildTextField('Message*', maxLines: 5),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _showdialog,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          backgroundColor: quincy,
                        ),
                        child: Text('Send message',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 32),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Join our newsletter',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: quincy,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Add your details and you’ll receive our quarterly email, including what’s happening with B.R Compressor.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      _buildTextField('Email Address'),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _showdialog,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          backgroundColor: quincy,
                        ),
                        child: Text('Sign up',style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 16),

                      Text(
                        'Legal',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: quincy),
                      ),
                      _text('Terms & Conditions'),

                      _text('Privacy Policy'),

                      _text('Cookie Policy'),
                      SizedBox(height: 16),
                      Text(
                        'Alternatively contact us at:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: quincy),
                      ),
                      Text('B.RCompressor.com'),
                      Text('+91 9582463393'),
                      Text('Street Number 4, near sector 3, Nahar Singh Colony, Sector 4, Sector 3, Faridabad, Haryana 121004'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: quincy)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}

Widget _text(String word){
  return  TextButton(
    onPressed: () {},
    child: Text(word,style: TextStyle(color: Colors.black54),),
  );

}
