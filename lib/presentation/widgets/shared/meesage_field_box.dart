import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String>onValue;
  const MessageFieldBox({
    super.key, 
    required this.onValue
  });

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;
    final outlineInputBorder=UnderlineInputBorder(
      borderSide: const BorderSide(color:Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );
    final textController=TextEditingController();
    final focusNode =FocusNode();

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
            final textValue=textController.value.text;
            onValue(textValue);
            
            textController.clear();
          },
        ),
       );

    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller:textController,
       decoration: inputDecoration,
       onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
       },
    );
  }
}