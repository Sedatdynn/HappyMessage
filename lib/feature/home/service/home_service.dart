import 'package:core/exception/exception.dart';
import 'package:happy_message_app/feature/home/model/home_model.dart';

class ApiService extends IApiService {
  @override
  Future fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final List<MessageModel> messageList = [
        const MessageModel(
            title: 'Sevgili Faik',
            date: '28.01.2024',
            message:
                'Geçmişinizin üzerinize yüklediği tüm yükleri yavaşça bırakın. Kalbinizin derinliklerinde değişmek ve iyileşmek için büyük bir güç yatıyor. Zor bir süreçten geçtiğini biliyorum ve ne kadar yıprandığını da biliyorum. Ancak artık kendinizi geçmişin puslu sayfalarından çıkarıp kendi hikayenizi yazmak için yepyeni bir sayfa açmanın zamanı geldi.\nArtık kendi hayatınızın kontrolünü elinize almanın zamanı geldi. Bunu yapmaya devam ettikçe ileriye bakmanız daha kolay olacak ve olmak istediğiniz kişiyle daha uyumlu hale geleceksiniz. ',
            isLiked: false),
        const MessageModel(
            title: 'Sevgili Okan',
            date: '29.01.2024',
            message:
                'Lorem ipsum dolor sit amet consectetur. Tincidunt elementum tempor eget et. Ultricies maecenas eget nec eleifend a aliquet praesent ac eget. Aenean cum magna bibendum justo. Ultricies purus risus lacinia tortor vestibulum laoreet ultricies pellentesque ultrices. Ut fermentum ullamcorper massa magna. Amet imperdiet porta scelerisque sapien vitae. Nisl sagittis at platea turpis sed fames eget arcu amet. Vulputate lacus arcu nunc augue sit scelerisque imperdiet. Ut quam duis tortor auctor. Varius ut dictum dictumst odio.Sollicitudin massa amet viverra elementum leo. Diam eget dolor sed lacus dolor. Proin pellentesque turpis et amet. Ullamcorper morbi gravida purus.',
            isLiked: false),
        const MessageModel(
            title: 'Sevgili Sedat ',
            date: '02.02.2024',
            message:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            isLiked: false),
        const MessageModel(
            title: 'Lorem ipsum dolor sit amet',
            date: '04.02.2024',
            message:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus sed vulputate odio ut enim blandit volutpat. Mauris rhoncus aenean vel elit scelerisque mauris. Leo vel orci porta non pulvinar neque laoreet suspendisse. Scelerisque eleifend donec pretium vulputate sapien nec sagittis.',
            isLiked: false),
        const MessageModel(
            title: 'Lorem ipsum dolor sit amet',
            date: '12.02.2024',
            message:
                'Arcu ac tortor dignissim convallis. Libero volutpat sed cras ornare arcu dui. Nisl tincidunt eget nullam non nisi. Mi bibendum neque egestas congue quisque egestas diam in. Iaculis urna id volutpat lacus laoreet non curabitur. Enim sit amet venenatis urna cursus eget. Nam aliquam sem et tortor consequat id. Eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque.',
            isLiked: false),
      ];
      return messageList;
    } catch (e) {
      ServerException(message: e.toString(), statusCode: '505');
    }
  }
}

abstract class IApiService {
  Future fetchData();
}
