String jstr = '''
{
    "data": [{
        "type": "scene",
        "image": "assets/images/temp.jpeg",
        "message": "눈 떴는데 짹짹거리는 소리에 쎄한 기분으로 ..."
    },
    {
        "type": "scene",
        "image": "assets/images/temp.jpeg",
        "message": "와... 망했다..."        
    },
    {
        "type": "scene",
        "image": "assets/images/temp.jpeg",
        "message": "(전력질주로 뛰어 수업 시작 10분전에 도착함,,)"
    },
    {
        "type": "scene",
        "image": "4.png",
        "message": "교수님: 엣헴.. 앞으로 수업 시작 후 15분을 넘기지 않으면 결석이 아닌 출석처리를 해주겠네."
    },
    {
        "type": "sheetUp",
        "pick": [
            "(속마음1): 15분 이상 늦어도 된다는 건가..?",
            "(속마음2): 아 그럼 이제부터 15분 전에만 오면 되겠다!",
            "(속마음3): 응?"
        ],
        "next": [
            "11.json",
            "12.json",
            "13.json"
        ]
        
    }]
}
''';

String sheetupExam = '''
  "data": [{
        "type": "sheetup",
        "pick": [
          "pick 1",
          "pick 2",
          "pick 3"
        ],
        "next": [
          "next 1",
          "next 2",
          "next 3"
        ]
    },
''';
