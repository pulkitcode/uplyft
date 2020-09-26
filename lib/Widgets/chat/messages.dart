import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:project_iris/Widgets/chat/message_bubble.dart';

class Messages extends StatelessWidget {

  Random rand = new Random();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseAuth.instance.currentUser(),
      builder: (ctx, futureSnapshot) {
        if (futureSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return StreamBuilder(
            stream: Firestore.instance
                .collection('chat')
                .orderBy(
                  'createdAt',
                  descending: true,
                )
                .snapshots(),
            builder: (ctx, chatSnapshot) {
              if (chatSnapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final chatDocs = chatSnapshot.data.documents;
              return ListView.builder(
                reverse: true,
                itemCount: chatDocs.length,
                itemBuilder: (ctx, index) => MessageBubble(
                  chatDocs[index]['text'],
                  rand.nextBool(),
                  /*meant to pass if the user is typing or not by comparing
                  the user id (commented below) but would have to 
                  implement authentication thus, just passing a simple bool */
                  //chatDocs[index]['userId'] == futureSnapshot.data.uid,
                  //chatDocs[index]['username'], 
                  key: ValueKey(chatDocs[index].documentID),
                ),
              );
            });
      },
    );
  }
}
//uid not retrieved as, this code does not perform authentication

