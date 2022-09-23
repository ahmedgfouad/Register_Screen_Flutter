import 'package:flutter/material.dart';

import '../shared/Button/Button.dart';
import '../shared/TextFormFiedl/TextFormField.dart';

class Validator extends StatelessWidget {
  static final route='/val';
GlobalKey<FormState> formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextFormField(hintName: 'phone',
                    validate: (){ },
                ),
                InkWell(
                  onTap: (){
                    if(formKey.currentState!.validate()){

                      print('ok');
                    }
                  },
                  child: DefalutButton(text: 'ok', height: 70, width: 120,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
