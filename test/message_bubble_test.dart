import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project_iris/Widgets/chat/message_bubble.dart';

void main() {
  testWidgets('Messagebubble has message, isMe and key',
      (WidgetTester tester) async {
    //build the widget using pumpWidget()
    await tester
        .pumpWidget(MessageBubble('message', 
        true, 
        key: ValueKey('F8i08jlS8SJUGuJA3jJB')));
  });
}
