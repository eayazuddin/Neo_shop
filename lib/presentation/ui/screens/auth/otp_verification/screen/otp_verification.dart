import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';
import '../../complete_profile/screen/complete_profile.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Image.asset(
                    Assets.images.logo.path,
                    height: 150,
                    width: 150,
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
              ],
            ),
            SizedBox(height: 10,),
            Text(
              " Enter Otp Code",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600,
              ),
            ),
            CustomText(
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w300,
              text: "A 6 digit Otp Code has been Sent ",
              fontSize: 20,
              color: Colors.grey.shade400,
            ),
            SizedBox(height: 15),
            PinCodeTextField(
              controller: otpController,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveFillColor: AppColors.fillColor,
                inactiveColor: AppColors.whiteColor,
                activeColor: AppColors.fillColor,
                selectedColor: Colors.green,
                selectedFillColor: Colors.white,
                activeFillColor: AppColors.fillColor,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              cursorColor: Colors.green,
              enablePinAutofill: true,
              onCompleted: (v) {},
              onChanged: (value) {},
              beforeTextPaste: (text) {
                return true;
              },
              appContext: context,
            ),
            SizedBox(height: 10,),
            CustomButton(
                height: 48,
                backgroundColor: Color(0xff07ADAE),
                title: "Next",
                onTap: () {
                  Get.to(CompleteProfile());
                }),
          ],
        ),
      ),
    );
  }
}
