import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 30),
          child: ListView(
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
                    'Signup',
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              CustomTextFormField(
                hintText: 'Name',
                controller: nameController,
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
              CustomTextFormField(
                hintText: 'Confirm Password',
                controller: passwordController,
              ),
              SizedBox(
                height: size.height / 30,
              ),
              CustomTextFormField(
                hintText: 'Phone Number',
                controller: phoneController,
              ),
              SizedBox(
                height: size.height/30,
              ),
              ElevatedButton(onPressed: (){}, child:  const Text(
                'Signup',
              ),),
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
              SizedBox(
                height: size.height / 30,
              ),
              OutlinedButton(onPressed: (){}, child: const Text(
                'Login',
              ),),
              SizedBox(
                height: size.height / 30,
              ),

            ],
          ),
        ));
  }
}
