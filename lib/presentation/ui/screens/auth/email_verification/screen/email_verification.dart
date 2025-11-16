/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/auth/otp_verification/screen/otp_verification.dart';
import 'package:neo_shop/presentation/ui/widgets/custom_button.dart';
import 'package:neo_shop/presentation/ui/widgets/custom_text_field.dart';
import '../../../../../../gen/assets.gen.dart';
import '../controller/email_verification.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Center(
                    child: Image.asset(Assets.images.logo.path),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Welcome back',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Please enter your email address',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey),
                  ),

                  const SizedBox(height: 24),

                  CustomTextField(
                    textEditingController: _emailTEController,
                    hintText: 'Email',
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your email address';
                      } else if (!text!.isEmail) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButton(
                      title: "Next",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          verifyEmail();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> verifyEmail() async {
    setState(() => isLoading = true);

    setState(() => isLoading = false);

    if (response) {
      Get.to(() => const OtpVerification());
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(controller.message)),
        );
      }
    }
  }
}
*/
