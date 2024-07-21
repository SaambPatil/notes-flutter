import 'package:flutter/material.dart';
import 'package:todo_app/widgets/neweditmodalscreen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  void onCardClick(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) =>const NewEditNote() ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCardClick(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(width: 1, color: Colors.blue),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Title',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 4,
              ),
              Expanded(
                child: Text(
                  style: TextStyle(
                    overflow: TextOverflow.fade,
                  ),
                  softWrap: true,
                  // maxLines: 5,
                  'Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title Title',
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                '20th May - 2024',
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class NoteItem extends StatelessWidget {
//   const NoteItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.blue,
//           width: 2,
//         ),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Padding( 
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: const [
//             Text(
//               'Title',
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16,
//                 overflow: TextOverflow.ellipsis,
//               ),
//               maxLines: 2,
//               textAlign: TextAlign.start,
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Expanded(
//               child: Text(
//                 style: TextStyle(
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 softWrap: true,
//                 maxLines: 5,
//                 'Title',
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Text(
//               style: TextStyle(
//                 fontWeight: FontWeight.w300,
//               ),
//               '20th May - 2024',
//               textAlign: TextAlign.end,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
