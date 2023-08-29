import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  bool clrButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     hintText: 'Enter your email',
              //     labelText: 'Email',
              //     border: OutlineInputBorder(),
              //     errorBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Colors.red,
              //       ),
              //     ),
              //     prefixIcon: Icon(Icons.email),
              //   ),
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Reset code',
                  labelText: 'Reset code',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.numbers),
                  suffix: InkWell(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'New password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50.0),
                  backgroundColor: const Color(0xFFEF6969),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('Reset password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(CupertinoIcons.back),
      color: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
