import 'dart:io';
import 'package:agrosnap/pages/upload_details_photo.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';



class Camera extends StatefulWidget {
  const Camera({Key? key, required this.cameras}) : super(key: key);

  final List<CameraDescription>? cameras;

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late CameraController _cameraController;


  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initCamera(widget.cameras![0]);
  }

  Future takePicture() async {
    if (!_cameraController.value.isInitialized) {
      return null;
    }
    if (_cameraController.value.isTakingPicture) {
      return null;
    }
    try {
      await _cameraController.setFlashMode(FlashMode.off);
      XFile picture = await _cameraController.takePicture();
        showDialog(
      context: context,
      builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius:
          BorderRadius.all(
            Radius.circular(10.0))),
        content: Builder(
          builder: (context) {                            
            var height = MediaQuery.of(context).size.height;
            var width = MediaQuery.of(context).size.width;

            return SizedBox(
              height: height - 300,
              width: width,
              child: Column(
                children: [
                  Image.file(File(picture.path)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.refresh_rounded, color: Colors.red, size: 30,),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.check_circle_rounded, color: Colors.green, size: 30,),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const uploadDetailsPhoto()));
                        },
                        
                      ),
                    ],
                  ),
                ],
              ),

            );
          },
        ),
      ),
);
        } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return null;
    }
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        (_cameraController.value.isInitialized)
            ? CameraPreview(_cameraController)
            : Container(
                color: Colors.black,
                child: const Center(child: CircularProgressIndicator())),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  color: Color.fromARGB(255, 172, 104, 255)),
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.circle),
                  onPressed: () {
                    takePicture();
                  },
                  color: Colors.white,
                  iconSize: 50,
                ),
              )))
      ]),
    ));
  }
}