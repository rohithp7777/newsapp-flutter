import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {

  final String postUrl;
  const ArticleView({required this.postUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
          title: PreferredSize(
              preferredSize: Size.fromHeight(100.0),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 4, 8),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //Text('13 Oct,2021')
                        Text(
                          "NewsApp",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,fontSize: 30),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),

              ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl:  widget.postUrl,
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
