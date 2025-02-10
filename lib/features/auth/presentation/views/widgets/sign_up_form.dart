import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            lable: 'الاسم بالكامل ',
            hint: 'الاسم بالكامل ',
            icon: AppCustomIcons.humanIcon,
            validator: (value) {
              if (value == null) {
                return 'الرجاء إدخال الاسم بالكامل';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomTextField(
            lable: 'البريد الإلكتروني',
            hint: 'mail@example.com',
            icon: AppCustomIcons.mailIon,
            validator: (value) {
              if (value == null) {
                return 'الرجاء إدخال البريد الإلكتروني';
              } else if (!value.contains('@') || !value.contains('.')) {
                return 'الرجاء إدخال بريد إلكتروني صحيح';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomTextField(
            lable: 'كلمة المرور',
            hint: '********',
            icon: AppCustomIcons.lockIcon,
            suffixIcon: AppCustomIcons.hideIcon,
            validator: (value) {
              if (value == null) {
                return 'الرجاء إدخال كلمة المرور';
              } else if (value.length < 8) {
                return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomTextField(
            lable: 'تأكيد كلمة المرور',
            hint: '********',
            icon: AppCustomIcons.lockIcon,
            suffixIcon: AppCustomIcons.hideIcon,
            validator: (value) {
              if (value == null) {
                return 'الرجاء إدخال تأكيد كلمة المرور';
              } else if (value.length < 8) {
                return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
              }
              // else if (value != 'كلمة المرور') {
              //   return 'كلمة المرور غير متطابقة';
              // }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomButton(
            text: 'إنشاء حساب',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
