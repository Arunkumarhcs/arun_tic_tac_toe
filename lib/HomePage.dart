import 'package:flutter/material.dart';
import 'package:tictactoe/game_button.dart';
import 'package:tictactoe/customDailog.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonlist;
  var player1;
  var player2;
  var activeplayer;



  @override
  void initState() {
    super.initState();
    buttonlist=doinit();
  }


  List<GameButton> doinit(){
    player1 = new List();
    player2 = new List();
    activeplayer =1;


    var gamebutton = <GameButton>[
    new GameButton(id:1),
    new GameButton(id:2),
    new GameButton(id:3),
    new GameButton(id:4),
    new GameButton(id:5),
    new GameButton(id:6),
    new GameButton(id:7),
    new GameButton(id:8),
    new GameButton(id:9),
    ];
    return gamebutton;
  }
  
  void playGame(GameButton arun) {
    setState(() {
      if (activeplayer==1) {
        arun.text="X";
        arun.bg=Colors.orange;
        activeplayer=2;
        player1.add(arun.id);

      } else {
        arun.text="0";
        arun.bg=Colors.black;
        activeplayer=1;
        player2.add(arun.id);
      }
      arun.enabled=false;
      checkwinner();
    });
              
 }

 void checkwinner(){
   var winner=-1;
   if (player1.contains(1)&& player1.contains(2)&& player1.contains(3)) 
   {
     winner=1;
     
   } 
   if (player2.contains(1)&& player2.contains(2)&& player2.contains(3)) 
   {
     winner=2;
     
   }
   if (player1.contains(4)&& player1.contains(5)&& player1.contains(6)) 
   {
     winner=1;
     
   }
   if (player2.contains(4)&& player2.contains(5)&& player2.contains(6)) 
   {
     winner=2;
     
   }
   if (player1.contains(7)&& player1.contains(8)&& player1.contains(9)) 
   {
     winner=1;
     
   }
   if (player2.contains(7)&& player2.contains(8)&& player2.contains(9)) 
   {
     winner=2;
     
   }
   //col
    if (player1.contains(1)&& player1.contains(4)&& player1.contains(7)) 
   {
     winner=1;
     
   } 
   if (player2.contains(1)&& player2.contains(4)&& player2.contains(7)) 
   {
     winner=2;
     
   }
   if (player1.contains(2)&& player1.contains(5)&& player1.contains(8)) 
   {
     winner=1;
     
   }
   if (player2.contains(2)&& player2.contains(5)&& player2.contains(8)) 
   {
     winner=2;
     
   }
   if (player1.contains(3)&& player1.contains(6)&& player1.contains(9)) 
   {
     winner=1;
     
   }
   if (player2.contains(3)&& player2.contains(6)&& player2.contains(9)) 
   {
     winner=2;
     
   }
//diagonal

   if (player1.contains(1)&& player1.contains(5)&& player1.contains(9)) 
   {
     winner=1;
     
   }
   if (player2.contains(1)&& player2.contains(5)&& player2.contains(9)) 
   {
     winner=2;
     
   }
   if (player1.contains(3)&& player1.contains(5)&& player1.contains(7)) 
   {
     winner=1;
     
   }
   if (player2.contains(3)&& player2.contains(5)&& player2.contains(7)) 
   {
     winner=2;
     
   }
if (winner!=-1) {
  if (winner==1) {
    showDialog(
      context: context,
      builder: (_)=> new CustomDailog("player 1 won", "press the reset button to start again",resetGame)
          );
        }
        else{
       showDialog(
      context: context,
      builder: (_)=> new CustomDailog("player 2 won", "press the reset button to start again",resetGame)
          );
        }
        }
      }

      void resetGame(){
        if (Navigator.canPop(context)) Navigator.pop(context); 
        setState(() {
          buttonlist = doinit();
        });{
          
        }
       }

      
      
      
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: new AppBar(title: new Text("Tic Tac Toe"),),
            body:new GridView.builder(
              padding:const EdgeInsets.all(10.0),
      
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 9.0,
                mainAxisSpacing: 9.0,
              ),
              itemCount: buttonlist.length,
              itemBuilder: (context,i)=>new SizedBox(
              width: 100.0,
              height: 100.0,
              child: new RaisedButton(
                padding: const EdgeInsets.all(8.0),
                onPressed: buttonlist[i].enabled?()=>playGame(buttonlist[i]):null,
                          child: new Text(buttonlist[i].text,
                          style: new TextStyle(color: Colors.white,
                          fontSize: 20.0)
                          ),
                          color: buttonlist[i].bg,
                          disabledColor: buttonlist[i].bg,
                        ),
                        ) ,
                      )
                    );
                  }
                
                  
      }
      
      class CutomDailog {
}