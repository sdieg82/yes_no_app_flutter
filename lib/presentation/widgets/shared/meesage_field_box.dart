import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;
    final outlineInputBorder=UnderlineInputBorder(
      borderSide: const BorderSide(color:Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration=InputDecoration(
        filled: true,
        // fillColor: Theme.of(context).colorScheme.primaryContainer,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        hintText: 'Type a message',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            // Handle send action
            print('Valor caja texto ');
          },
        ),
       );

    return TextFormField(
       decoration: inputDecoration,
       onFieldSubmitted: (value) => {
        print('Submited Value $value'),
       },
       onChanged: (value) => {
         print('Submited Value $value'),
        
       },
    );
  }
}