import 'package:flutter/material.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';
import 'package:untitled6/Profiles.dart';

class StorySection extends StatelessWidget {
  final List<UserModel> userInfoList;

  const StorySection({Key? key, required this.userInfoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfoList.length,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoryPage(user: userInfoList[index], storyItem: userInfoList[index].stories[0]),
                ),
              );
            },
            child: StoryItemWidget(userInfoList[index]),
          );
        },
      ),
    );
  }
}

class StoryItemWidget extends StatelessWidget {
  final UserModel storyItem;

  const StoryItemWidget(this.storyItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              storyItem.userProfile,
            ),

          ),
          const SizedBox(height: 8),
          Text(
            storyItem.userName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white,fontFamily: 'Montserrat'),
          ),

        ],
      ),
    );
  }
}

final dataUsers = [
  UserModel(
    user1.userName,
    user1.userProfile,
    [
      StoryModel(
          "https://www.shutterstock.com/image-photo/abstract-blue-background-explosion-technology-260nw-2260115461.jpg"),
      StoryModel(
          "https://www.shutterstock.com/image-photo/outdoor-photo-man-stood-field-260nw-2256074123.jpg"),
      StoryModel(
          "https://www.shutterstock.com/image-photo/vectorstyle-image-woman-jesus-260nw-2243817549.jpg"),
      StoryModel(
          "https://www.shutterstock.com/image-photo/formula-1-car-on-racetrack-260nw-2274502733.jpg"),

    ],
  ),
];



class StoryPage extends StatefulWidget {
  final UserModel user;
  final StoryModel storyItem;

  const StoryPage({Key? key, required this.user, required this.storyItem}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController =
        ValueNotifier<IndicatorAnimationCommand>(IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          final user = dataUsers[pageIndex];
          final story = user.stories[storyIndex];
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: StoryImage(
                  key: ValueKey('$pageIndex-$storyIndex'),
                  imageProvider: NetworkImage(story.imageUrl),
                  fit: BoxFit.contain,

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 8),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(user.userProfile),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      user.userName,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 32),
              child: IconButton(
                padding: EdgeInsets.zero,
                color: Colors.white,
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          if (pageIndex == dataUsers.indexOf(widget.user)) {
            return 0;
          }
          return 0;
        },
        pageLength: dataUsers.length,
        storyLength: (int pageIndex) {
          return dataUsers[pageIndex].stories.length;
        },
        onPageLimitReached: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}


