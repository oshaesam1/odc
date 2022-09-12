import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height / 30),
              child: Image.asset(
                'assets/images/logo.png',
                height: size.height / 11,
                width: size.width / 1.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              children: const [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            CustomTextFormField(
              hintText: 'Email',
              controller: emailController,
            ),
            SizedBox(
              height: size.height / 30,
            ),
            CustomTextFormField(
              hintText: 'Password',
              controller: passwordController,
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget password?',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
            SizedBox(

              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child:  const Text(
                'Login',
              ),),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: size.width/50),
                  child: const Text('OR'),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            OutlinedButton(onPressed: (){}, child: const Text(
              'Sign Up',
            ),)

          ],
        ),
      ),
    ));
  }
}
