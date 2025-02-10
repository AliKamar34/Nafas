import 'package:flutter/material.dart';
import 'package:nafas_app/features/home/data/model/treatment_plan_model.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/tap_to_expand.dart';

class TreatmentPlanListView extends StatelessWidget {
  const TreatmentPlanListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TreatmentPlanModel> treatmentPlanModelList = [
      TreatmentPlanModel(
        title: 'الأسبوع الأول – الاستعداد للإقلاع',
        content: [
          'تقليل عدد السجائر تدريجيًا يوميًا.',
          'تجنب المحفزات مثل القهوة أو الأماكن التي تدخن فيها.',
          'تجربة تمارين التنفس العميق والاسترخاء.',
          'استخدام التطبيق لتتبع عدد السجائر وتقليلها يوميًا.',
        ],
      ),
      TreatmentPlanModel(
        title: 'الأسبوع الثاني – الإقلاع الفعلي',
        content: [
          'شرب الكثير من الماء لتخليص الجسم من النيكوتين.',
          'مضغ العلكة أو تناول وجبات خفيفة صحية عند الشعور بالرغبة في التدخين.',
          'ممارسة الرياضة يوميًا لتحسين المزاج وتقليل التوتر.',
          'استخدام التطبيق لتتبع عدد السجائر وتقليلها يوميًا.',
        ],
      ),
      TreatmentPlanModel(
        title: 'الأسبوع الثالث – تثبيت العادات الصحية',
        content: [
          'ممارسة التأمل أو المشي عند الشعور بالتوتر.',
          'مكافأة نفسك عند إتمام أسبوع دون تدخين.',
          ' تتبع التقدم في التطبيق لمعرفة المال والصحة المستفادة.',
        ],
      ),
      TreatmentPlanModel(
        title: 'الأسبوع الرابع – انتهاء الإدمان النفسي',
        content: [
          'تجنب الأصدقاء المدخنين أو الأماكن التي تحفزك على التدخين.',
          'استبدال العادات القديمة بأخرى جديدة، مثل شرب شاي الأعشاب بدلًا من التدخين.',
          'تحديد أهداف طويلة المدى مثل ممارسة رياضة جديدة أو تطوير مهارة.',
          'الاحتفال بمرور شهر بدون تدخين!',
        ],
      ),
      TreatmentPlanModel(
        title: 'بعد الشهر الأول – الاستمرار والالتزام',
        content: [
          'قراءة مقالات محفزة عن فوائد الإقلاع عن التدخين.',
          'تذكير نفسك دائمًا بأنك أقوى من الإدمان!',
          'ابتعد عن الأماكن التي قد تحفزك على العودة للتدخين.',
          'استخدم المال الذي وفرته من عدم شراء السجائر في شيء تحبه.',
        ],
      ),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return TapToExpandWidget(
          treatmentPlanModel: treatmentPlanModelList[index],
        );
      },
    );
  }
}
