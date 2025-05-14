Client-Server desktop application for To Do list.
*****************************************************
Client: WPF
*****************************************************
Server: (ASP.NET Core + SignalR)
This is a server-side real-time To-Do list application built using ASP.NET Core and SignalR. It supports full CRUD operations, real-time broadcasting to all connected clients, and a scalable architecture using Entity Framework and SQLite.

Technologies Used:
ASP.NET Core
SignalR
Entity Framework Core
SQLite (for development)
Serilog (for logging)
*****************************************************
Features:
Real-Time Communication with SignalR
Implemented SignalR via TasksHub for real-time broadcasting.
On every task change (Add, Update, Delete), the server sends updates using:
*****************************************************
Database
Using SQLite instead of SQL Server:
- Easier setup for development and testing (no server installation needed)
- Can be switched to SQL Server by changing the provider and connection string.
*****************************************************
Logging
- Integrated Serilog to log:
- DB connections
- Real-time events
- Errors and exceptions
*****************************************************
Why SignalR?
I chose SignalR because the application requires real-time synchronization between multiple users.
SignalR provides a simple and powerful abstraction over lower-level transport mechanisms (like WebSockets),
allowing seamless real-time communication between the server and all connected clients.
*****************************************************
CRUD Operations:
Create:   	AddTask(string task)	Adds task to DB and broadcasts updated list
Read:		    GetAllTasks()	Returns full task list
Update:	    UpdateTaskStatus(int taskId, bool isDone) 	Updates task status and broadcasts
Delete:	    DeleteTask(int taskId)	Removes task and broadcasts updated list

All changes are immediately reflected to all clients in real-time.
*****************************************************

Architecture & Design
MVVM Pattern
Model:     TaskModel represents a task entity with properties like Id, Description, IsDone, and IsEditing.
ViewModel: Logic that binds user actions (add/edit/delete) to server-side SignalR hub methods. Maintains the state of the task list and propagates changes in real-time.
View:      The UI layer receives updates via SignalR and updates the DOM accordingly.

This structure improves code organization, testability, and scalability.

*****************************************************
Instructions for Running the Application
  
1. Start the Server
Open the solution in Visual Studio and set ServerToDoList as the startup project.
The SignalR hub will be hosted locally at http://localhost:xxxx (based on your local port).

2. Launch Client Instances
Navigate to:
{workingDirectory}\WpfToDoList\bin\Debug\net7.0-windows
and open WpfToDoList.exe.

You can launch multiple instances of WpfToDoList.exe.
Each instance represents a separate client connected to the same SignalR server on localhost.
Any changes (adding, updating, or deleting tasks) will be reflected in real-time across all clients.


*****************************************************
Future Improvements:
- Extract business logic from TasksHub into a service layer (TaskService)
- Add user authentication and task ownership
- Add a status message in the UI
