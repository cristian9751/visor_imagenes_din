import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../domain/entities/DiscoverProvider.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverProvider>(
      builder : (context, state, child) {
        return Center(
          child: Container(
              child: Text('Visor de imagenes paginado. Hay ${state.loadedImagePosts.length} imagenes')
          ),
        );
      }
    );
  }

}