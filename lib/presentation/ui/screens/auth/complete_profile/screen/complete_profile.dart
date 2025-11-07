import 'package:flutter/material.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';
import '../../../../widgets/custom_text_field.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController shippingAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFB),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Center(
                child: Image.asset(
                  Assets.images.logo.path,
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Neo Shop",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                "Complete Profile",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
              CustomText(
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w300,
                text: "Get Started With your details",
                fontSize: 25,
                color: Colors.grey.shade700,
              ),
              SizedBox(height: 30),
              CustomText(
                fontWeight: FontWeight.w300,
                text: "Please Enter your first Name",
                fontSize: 18,
                color: Colors.black,
              ),
              SizedBox(height: 3),
              CustomTextField(
                textEditingController: firstNameController,
                hintText: "First Name",
              ),
              SizedBox(height: 10),
              CustomText(
                fontWeight: FontWeight.w300,
                text: "Please Enter Last Name",
                fontSize: 18,
                color: Colors.black,
              ),
              SizedBox(height: 3),
              CustomTextField(
                textEditingController: lastNameController,
                hintText: "Last Name",
              ),
              SizedBox(height: 10),
              CustomText(
                fontWeight: FontWeight.w300,
                text: "Enter your Mobile Number",
                fontSize: 18,
                color: Colors.black,
              ),
              SizedBox(height: 3),
              CustomTextField(
                textEditingController: mobileController,
                hintText: "Mobile Number",
              ),
              SizedBox(height: 10),
              CustomText(
                fontWeight: FontWeight.w300,
                text: "Enter City NAme",
                fontSize: 18,
                color: Colors.black,
              ),
              SizedBox(height: 3),
              CustomTextField(
                textEditingController: cityController,
                hintText: "City Name",
              ),
              SizedBox(height: 10),
              CustomText(
                fontWeight: FontWeight.w300,
                text: "Enter Shipping Address",
                fontSize: 18,
                color: Colors.black,
              ),
              SizedBox(height: 3),
              CustomTextField(
                maxLines: 3 ,
                textEditingController: shippingAddressController,
                hintText: "Shipping Address",
              ),
              SizedBox(height: 15),
              CustomButton(
                backgroundColor: Color(0xff07ADAE),
                title: "Complete",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
