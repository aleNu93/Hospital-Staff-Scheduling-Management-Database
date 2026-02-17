# 🏥 Hospital Staff Scheduling Management Database

## 📌 Overview
This project implements a relational database designed to manage and automate hospital staff scheduling.  
The system organizes daily assignments, service rotations, on-call shifts, and vacation control while enforcing operational and administrative rules required in a healthcare environment.

The objective is to replace manual scheduling processes with a structured and reliable system that improves traceability, reduces errors, and supports efficient workforce planning.

---

## 🎯 Purpose
Healthcare coordinators often manage schedules using spreadsheets or documents, which leads to inconsistencies, duplicated records, and time-consuming verification processes.

This database provides a centralized and rule-driven solution that:

- Prevents invalid assignments
- Guarantees fair shift distribution
- Blocks scheduling conflicts
- Improves reporting and operational control

---

## 🚀 Features
- 📅 Daily staff assignment per service
- 🔄 Rotation and on-call shift tracking
- 🌴 Vacation and leave management
- ⚠️ Conflict detection and validation rules
- 📊 Monthly reporting queries
- 🧾 Historical record protection
- 🏥 Service availability tracking
- 👨‍⚕️ Active staff validation

---

## 🗄 Database Design

The database follows a normalized relational model to ensure consistency and eliminate redundancy.

### Core Entities
- Staff
- Service
- Schedule_Date
- Work_Status
- Rotation
- On_Call_Shift
- Vacation
- Closed_Month

### Relationship Tables
- Staff_Assignment
- Staff_Status_Record
- Rotation_Assignment
- Shift_Record

---

## ⚙️ Business Rules Implemented
The system enforces operational healthcare scheduling constraints:

- A staff member can only be assigned to one service per day
- Vacation and working states cannot coexist on the same date
- Only active staff can be scheduled
- Past closed months cannot be modified
- Workdays cannot remain without records
- Assignments must match valid calendar dates
- Vacations automatically block scheduling
- Monthly records must be completed before closing

---

## 🧩 Technical Implementation
- Relational modeling
- Database normalization
- Constraints and validations
- Logical scheduling rules
- Analytical SQL queries
- Data integrity enforcement

---

## 👨‍💻 My Role
Project lead and database architect.

I designed the relational database and defined all business rules governing scheduling, rotations, on-call shifts, and vacation management.  
I implemented the data model, relationships, constraints, and validation logic, ensuring the system could reliably automate staff scheduling operations.

Stored procedures were implemented separately based on the architecture and specifications I established.

---

## 📊 Expected Impact
- Reduced administrative workload
- Fewer scheduling conflicts
- Improved operational transparency
- Faster monthly reporting
- More equitable shift distribution
- Reliable historical tracking

---

## 🎓 Academic Context
Database Systems Project
Healthcare Operations Scenario
