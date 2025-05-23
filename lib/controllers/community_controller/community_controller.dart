
import 'package:get/get.dart';
import '../../models/community_model/community_model.dart';
import '../../models/event_model/event_model.dart';
import '../../models/member_model/member_model.dart';

class CommunityController extends GetxController {
  var isFavourite = false.obs;
  var members = <Member>[].obs;
  var availableUsers = <Member>[].obs;

  var community = Rx<Community>(Community(
    name: "The Elm Park Tavern Community",
    communityMembers: 203,
    upcomingEvents: 5,
    currentlyCheckedIn: 8,
  ));

  var upcomingEvents = <Event>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initialData();
  }

  void _initialData() {
    // Initialize members
    members.addAll([
      Member(
        id: '1',
        name: 'Hugo Lloyd',
        role: 'Admin',
        avatarUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100&h=100&fit=crop&crop=face',
        isAdmin: true,
      ),
      Member(
        id: '2',
        name: 'Ben Fraser',
        role: 'Free for lunch',
        avatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100&h=100&fit=crop&crop=face',
      ),
      Member(
        id: '3',
        name: 'Caitlin Judd',
        role: 'Would like to grab a drink before the event at 6:30',
        avatarUrl: 'https://images.unsplash.com/photo-1508002366005-75a695ee2d17?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aGFwcHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D',
      ),
    ]);


    availableUsers.addAll([
      Member(
        id: '4',
        name: 'Alice Johnson',
        role: 'New member',
        avatarUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100&h=100&fit=crop&crop=face',
      ),
      Member(
        id: '5',
        name: 'Michael Brown',
        role: 'Event organizer',
        avatarUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100&h=100&fit=crop&crop=face',
      ),
      Member(
        id: '6',
        name: 'Sarah Wilson',
        role: 'Regular attendee',
        avatarUrl: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=100&h=100&fit=crop&crop=face',
      ),
      Member(
        id: '7',
        name: 'David Miller',
        role: 'Music enthusiast',
        avatarUrl: 'https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?w=100&h=100&fit=crop&crop=face',
      ),
    ]);

    upcomingEvents.addAll([
      Event(
        id: '1',
        title: 'Pub Quiz',
        date: '27',
        month: 'Nov',
        time: 'Sun from 19:00',
        location: 'Near Brixton, London',
      ),
      Event(
        id: '2',
        title: 'Live Music Night',
        date: '01',
        month: 'Dec',
        time: 'Tues from 19:00',
        location: 'Near Brixton, London',
      ),
    ]);
  }

  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }

  void addMember(Member member) {
    if (!members.any((m) => m.id == member.id)) {
      members.add(member);
      availableUsers.removeWhere((m) => m.id == member.id);
      Get.back(); // Close bottom sheet
      Get.snackbar(
        'Success',
        '${member.name} has been added.',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
      );
    }
  }

  List<Member> getAvailableUsers() {
    return availableUsers.where((user) => !members.any((member) => member.id == user.id)).toList();
  }
}