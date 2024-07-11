# AP Project : Student management app
![Static Badge](https://img.shields.io/badge/Advance%20Programming-%20%20%237d1dde)     ![Static Badge](https://img.shields.io/badge/Java%20-%20%20%230444fa%20) ![Static Badge](https://img.shields.io/badge/Flutter%20-%20%20%2304b0fa) ![Static Badge](https://img.shields.io/badge/Dart%20-%20%20%2304e8fa)

🎓This project is a simple app for managing students of a university.

💻 In the CLI,  the admin can register new students, teachers, courses, and assignments or change them. The teacher can also make changes on their courses and students. It is implemented in [Java](https://www.java.com/) ☕️.

📱 In the app, a student can make an account with their desired password and username (not a repeated one) and use them to log in. They can have access to a brief summary of upcoming deadlines. They can also create their own To-Do list. Likewise, they can see their best and worst  marks   to get motivated for trying even harder than before! There is also a simplified list of their courses and news related to the university. (In this project, news are from _SBU Computer science and Engineering faculty [website](https://encse.sbu.ac.ir/)_). It is implemented using [flutter](https://flutter.dev/) framework and [Dart](https://dart.dev/).


## Flutter app
- Welcome page
  - With two buttons for navigating to login and sign up page
- Sign Up & login page
<img src="assets/screenShots/Welcome.jpg" align="left"  width="30%" >
<img src="assets/screenShots/login1.jpg" align="left"  width="30%" >
<img src="assets/screenShots/signup1.jpg" align="center"  width="30%" >

- User info
  - With ability to upload an avatar
  - Deleting account
  - Changing password
<img src="assets/screenShots/profile.jpg" align="left"  width="30%" >
<img src="assets/screenShots/profile2.jpg" align="left"  width="30%" >
<img src="assets/screenShots/profileError.jpg" align="center"  width="30%" >

- Home Screen
  - Summary of user records (marks, deadlines etc.)
  - Summary of assignments
- Assignments
- News 
<img src="assets/screenShots/home.jpg" align="left"  width="30%" >
<img src="assets/screenShots/homeworks.jpg" align="left"  width="30%" >
<img src="assets/screenShots/news.jpg" align="center"  width="30%" >

- Classes
  - Add new classes
- To-Do list
  - Add & remove tasks
<img src="assets/screenShots/classes.jpg" align="left"  width="30%" >
<img src="assets/screenShots/classesAdd.jpg" align="left"  width="30%" >
<img src="assets/screenShots/tasks1.jpg" align="center"  width="30%" >
<img src="assets/screenShots/tasksAdd.jpg" align="left"  width="30%" >
<img src="assets/screenShots/tasksSetDay.jpg" align="left"  width="30%" >
<img src="assets/screenShots/tasksSetTime.jpg" align="center"  width="30%" >

## CLI
- Admin menu
  - Add/Remove students
  - Add/Remove teachers
  - Add/Remove classes
  - Add/Remove assignments
  - Modify changes to assignments, classes, data of students ant etc.
- Teacher menu
  - Add/Remove students to/from classes
  - Add/Remove assignments to/from classes
  - Modify changes to assignments, data of students ant etc.

## Backend

The backend is implemented using [Socket](https://docs.oracle.com/javase/8/docs/api/java/net/Socket.html) connection. It has a server that accept client handlers' requests. Client handler extends Thread so the server in capable of answering to multiple clients.
