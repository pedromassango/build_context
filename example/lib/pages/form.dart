import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Form(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (text) {
                    if (text.isEmpty) return 'Text cannot be empty';
                    return null;
                  },
                ),
                _ValidateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ValidateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => context.form.validate(),
      child: Text('Validate'),
    );
  }
}
