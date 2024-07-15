# 📚 Zen Class Database Model

Welcome to the **Zen Class** database! This schema outlines the structure of the database, including tables and relationships, to support a comprehensive online learning platform. Below you will find the features and the purpose of each table in the database.

## 📋 Tables

### 🎓 Courses
- **Stores information about various courses.**
- **Key Features:**
  - Course name
  - Course description
  - Course duration

### 🏫 Batches
- **Stores details about different batches within courses.**
- **Key Features:**
  - Batch name
  - Batch details
  - Linked to the courses table

### 👨‍🎓 Students
- **Contains information about the students enrolled in the courses.**
- **Key Features:**
  - Username, password, and email
  - Linked to both courses and batches tables

### 🧑‍🏫 Mentors
- **Stores data about the mentors associated with the courses.**
- **Key Features:**
  - Mentor name and email
  - Linked to the courses table

### 🏷️ Classes
- **Keeps track of individual classes conducted as part of the courses.**
- **Key Features:**
  - Class title and description
  - Start time and end time
  - Linked to the courses and mentors tables

### 📝 Feedbacks
- **Captures feedback from students about the classes.**
- **Key Features:**
  - Mentor feedback and session feedback
  - Key takeaways
  - Linked to mentors, students, and classes tables

### 📅 Attendance
- **Tracks the attendance of students in the classes.**
- **Key Features:**
  - Attendance status (attended or not)
  - Linked to students and classes tables

### ✅ Tasks
- **Stores the tasks assigned to students.**
- **Key Features:**
  - Task name and link

### 📊 Marks
- **Records the marks given by mentors for the tasks completed by students.**
- **Key Features:**
  - Marks obtained
  - Linked to mentors, students, and tasks tables

### ❓ Queries
- **Maintains the queries raised by students.**
- **Key Features:**
  - Query title and description
  - Linked to students table

## 🔗 Relationships
- **Courses**: The core table containing details of courses.
- **Batches**: Linked to courses through a foreign key.
- **Students**: Linked to both courses and batches through foreign keys.
- **Mentors**: Associated with courses through a foreign key.
- **Classes**: Connected to courses and mentors via foreign keys.
- **Feedbacks**: Tied to mentors, students, and classes through foreign keys.
- **Attendance**: Tracks student presence in classes, linked by foreign keys.
- **Tasks**: Independent table for task details.
- **Marks**: Combines mentors, students, and tasks through foreign keys.
- **Queries**: Linked to students through a foreign key.

## 🤝 Connect with Me

💼 **LinkedIn:** [Balamurugan A](https://www.linkedin.com/in/balamurugan-a/)<br>
