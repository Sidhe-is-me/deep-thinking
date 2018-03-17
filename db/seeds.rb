
Emotion.create!([
  {name: "Fear"},
  {name:  "Anger"},
  {name:  "Sadness"},
  {name:  "Joy"},
  {name: "Disgust"},
  {name: "Suprise"},
  {name: "Trust"},
])
Thought.create!([
  {date: "2018-03-17 00:00:00", name: nil, entry: "Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit.<br/><br/>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.", picture: "doctor_who_logo_22.jpg", emotion_id: 2, user_id: 1},
  {date: "2018-03-17 00:00:00", name: nil, entry: "Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit.<br/><br/>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.", picture: "Misc_Motivational_323193.jpg", emotion_id: 1, user_id: 1},
  {date: "2018-03-17 00:00:00", name: nil, entry: "Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit.<br/><br/>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.", picture: "rey_wallpaper_by_plagued_art-d9m8c2u.jpg", emotion_id: 4, user_id: 1},
  {date: "2018-03-17 00:00:00", name: nil, entry: "This emotion was created on the emo form and selected from the drop down and still does not save the name, but it shows up on the new emo index page", picture: "Moon-E-DI.jpg", emotion_id: 1, user_id: 1}
])
