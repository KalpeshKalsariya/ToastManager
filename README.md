# Workflow

Creating a Toast Message:
- A toast message is a small pop-up notification that typically appears at the bottom or top of the screen for a short duration.
- In this context, you would create a reusable method or class responsible for displaying toast messages.
- The method or class would accept parameters such as the message content, background color (for different types of messages like warning, failure, or success), and duration to display the message.
- After a specified duration, the toast message would automatically hide itself.

Managing Toast Message Position:
- Toast messages can be displayed at different positions on the screen, typically at the top or bottom.
- You can achieve this by adjusting the y-coordinate of the toast label's frame when displaying the message.
- By modifying the position dynamically based on parameters or preferences, you can control where the toast message appears on the screen.

Using an Enum for Toast Messages:
- Enums are a convenient way to represent a fixed set of related values.
- You can define an enum called ToastType, with cases like .warning, .failure, and .success, to represent different types of toast messages.
- When showing a toast message, you would specify the ToastType as a parameter, allowing for easier categorization and handling of different message types.

Including Messages in the Enum:
- To enhance the ToastType enum, you can associate a message with each case by defining a property called message.
- By adding this property, you can access a descriptive message associated with each toast type.
- This makes the enum more expressive and allows you to directly access the associated message when showing the toast message, improving code readability and maintainability.
