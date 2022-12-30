import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Chip(
              backgroundColor: Colors.black,
              shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
              label: Text('Все коды',style: TextStyle(color: Colors.white),),
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
            ),
            const Chip(
                label: Text('Избранное'),
                backgroundColor: Colors.transparent,
                shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.zero),
            const Chip(
                label: Text('Машина'),
                backgroundColor: Colors.transparent,
                shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.zero),
            const Chip(
                label: Text('Добавить'),
                backgroundColor: Colors.transparent,
                shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
                padding: EdgeInsets.zero),
          ],
        ));
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    
    ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: ((context, index) => Center(
            child: SizedBox(
              height: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('секция $index'),
                    ))),
              ),
            )
          ));
    
  }
}
*/