import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService extends GetxService {
  final _picker = ImagePicker();

  Future<String> getGalleryFile() async {
    final pickedGalleryFile =
        await _picker.pickImage(source: ImageSource.gallery);
    return pickedGalleryFile?.path ?? '';
  }

  Future<String> getCameraFile() async {
    final pickedCameraFile =
        await _picker.pickImage(source: ImageSource.camera);
    return pickedCameraFile?.path ?? '';
  }

  Future<List<String>> getMultiGalleryFile() async {
    final pickedCameraFile = await _picker.pickMultiImage();
    if (pickedCameraFile != null) {
      return pickedCameraFile.map((e) => e?.path ?? '').toList();
    }
  }
}
