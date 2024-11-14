import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:receipt/components/theme/theme.dart';
import 'package:receipt/receipt_screen/widgets/data_text_field.dart';

class ReceiptScreen extends StatelessWidget {
  ReceiptScreen({super.key});

  TextEditingController dateController = TextEditingController(text: "05 нояб. 2024, 23:53");
  TextEditingController receiptController = TextEditingController(text: "KGTP65128183/10398036323");
  TextEditingController fromController = TextEditingController(text: "4169•58•••••58");
  TextEditingController providerController = TextEditingController(text: "MBANK");
  TextEditingController accountNumberController = TextEditingController(text: "99655522");
  TextEditingController amountController = TextEditingController(text: "1 200,00 KGS");
  TextEditingController commissionController = TextEditingController(text: "12,00 KGS");
  TextEditingController totalAmountController = TextEditingController(text: "1 212,00 KGS");

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greyColor,
        leading: IconButton(
          enableFeedback: true,
          icon: const Icon(Icons.arrow_back_ios_outlined, size: 25),
          onPressed: () {},
        ),
        title: const Center(
          child: Text(
            'Чек по операции',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        DataTextField(
                          title: "Дата и время",
                          textEditingController: dateController,
                        ),
                        DataTextField(
                          title: "Квитанция",
                          textEditingController: receiptController,
                        ),
                        DataTextField(
                          title: "Откуда",
                          textEditingController: fromController,
                        ),
                        DataTextField(
                          title: "Поставщик услуг",
                          textEditingController: providerController,
                        ),
                        DataTextField(
                          title: "Номер счета",
                          textEditingController: accountNumberController,
                        ),
                        DataTextField(
                          title: "Сумма",
                          textEditingController: amountController,
                        ),
                        DataTextField(
                          title: "Комиссия",
                          textEditingController: commissionController,
                        ),
                        DataTextField(
                          title: "Сумма с учетом комиссии",
                          textEditingController: totalAmountController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Поделиться", style: theme.textTheme.titleLarge?.copyWith(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Вернуться",
                            style: theme.textTheme.titleLarge,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
