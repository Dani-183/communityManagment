
# Community Management App

A Flutter application that recreates a community management interface with clean architecture, state management using GetX, and reusable widgets.

## 🎯 Features Implemented

### ✅ Functional Features
- **Favourite Toggle**: Working toggle switch with state persistence using GetX
- **Add Members**: Bottom sheet functionality to select and add users to the member list
- **Dynamic UI Updates**: Real-time updates when members are added

### 📱 UI Components
- **Community Header**: Displays community info and statistics
- **About Section**: Static community description with expandable text
- **Upcoming Events**: List of events with date formatting
- **Location Section**: Location details with check-in functionality
- **Members Section**: Dynamic member list with add functionality
- **Settings**: Various settings including the functional favourite toggle

## 🏗️ Architecture & State Management

### State Management: GetX
**Choice Reasoning**: GetX was chosen for its simplicity, performance, and comprehensive feature set including:
- Reactive state management with minimal boilerplate
- Built-in dependency injection
- Route management
- Snackbar and dialog utilities
- Memory efficiency with automatic disposal

### Project Structure
```
lib/
├── bindings/           # Dependency injection bindings using GetX
├── constants/          # Static values like strings, colors, dimensions, etc.
├── controllers/        # GetX Controllers for managing state and business logic
├── gen/                # Auto-generated files (e.g. localization, JSON serialization)
├── models/             # Data models used across the application
├── widgets/            # Shared and reusable UI elements
│   ├── bottom_sheet/   # Bottom sheet components
│   ├── buttons/        # Button widgets for reuse
│   ├── about_section.dart
│   ├── community_header.dart
│   ├── event_item.dart
│   ├── location_section.dart
│   ├── member_item.dart
│   ├── member_section.dart
│   ├── setting_section.dart
│   └── upcoming_event_section.dart
└── main.dart           # Entry point of the application

```

## 🎨 Design Principles

### Widget Reusability
- **Modular Components**: Each UI section is a separate, reusable widget
- **Parameterized Widgets**: Widgets accept data through constructors for flexibility
- **Consistent Styling**: Unified color scheme and typography throughout the app

### Clean Architecture
- **Separation of Concerns**: Business logic in controllers, UI in widgets
- **Model-View-Controller**: Clear separation between data, presentation, and logic
- **Dependency Injection**: GetX handles controller lifecycle and injection
