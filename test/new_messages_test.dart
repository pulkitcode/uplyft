import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project_iris/Widgets/chat/new_messages.dart';

void main() {
  group('NewMessage', () {
    test('New message should be an empty string initially', () {
      expect(NewMessageState().enteredMessage, '');
    });

    final message = NewMessageState();
    message.sendMessage();

    test('Value should not be empty after message has been entered', () {
      expect(message.enteredMessage, 'message should not be empty');
    });
  });
}