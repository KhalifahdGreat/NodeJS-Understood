@State	Manages state within a view. Use for simple state management.
@Binding	Passes state down to child views. Links the state of a parent view with a child view.
@ObservedObject	Used for state management across multiple views using ObservableObject conforming class.
@EnvironmentObject	Shares data across many views with a single source of truth using EnvironmentObject.
@StateObject	Initializes and manages an ObservableObject, recommended for initial instantiation.
@Environment	Provides access to environment values, like size classes or color schemes.
Text("Hello, World!")	Displays static text in the UI.
Button(action: {}, label: {})	Creates an interactive button.
Image("imageName")	Displays an image from assets or system images.
List {}	Creates a scrollable list of items, like UITableView.
NavigationView {}	Embeds views in a navigation stack, allowing push/pop navigation.
NavigationLink(destination: {})	Creates a tappable link that navigates to a specified view.
VStack {}	Vertically stacks child views.
HStack {}	Horizontally stacks child views.
ZStack {}	Stacks child views on top of each other.
Spacer()	Adds flexible space to a view, used in stacks to create spacing.
ForEach(data) { item in }	Iterates over data to create views for each item, useful in lists and stacks.
@main	Entry point of the SwiftUI app, usually used on the main App struct.
.padding()	Adds padding around a view.
.font(.title)	Sets the font style and size for text.
.foregroundColor(.red)	Sets the color of text or elements.
.background(Color.blue)	Sets the background color of a view.
.cornerRadius(10)	Rounds the corners of a view by a specified radius.
.frame(width: height:)	Sets the size of a view.
.opacity(0.5)	Sets the transparency level of a view.
.shadow(radius: 5)	Adds a shadow to a view with a specified radius.
.onTapGesture {}	Adds a tap gesture recognizer to a view.
.sheet(isPresented: {})	Presents a modal view.
.alert(isPresented: {})	Displays an alert dialog.
.navigationBarTitle("Title")	Sets the title of a navigation bar within NavigationView.
.navigationBarItems()	Adds buttons or other items to the navigation bar.
.onAppear {}	Executes code when the view appears.
.onDisappear {}	Executes code when the view disappears.
.transition(.slide)	Adds a transition animation to a view.
.animation(.default)	Applies animation to changes in the view.
TextField("Placeholder", text: $text)	Creates an editable text field.
SecureField("Password", text: $password)	Creates a secure text field for passwords.
Toggle("Label", isOn: $isOn)	Creates a switch toggle.
Picker("Select", selection: $selection) {}	Creates a picker view for selecting options.
.scaleEffect(2.0)	Scales the size of a view.
.rotationEffect(.degrees(45))	Rotates a view by a specified angle.
.blur(radius: 5)	Applies a blur effect to a view.
ScrollView {}	Enables vertical or horizontal scrolling of content.
Form {}	Groups form elements, often used for user input forms.
.offset(x: y:)	Offsets a view by a specified amount horizontally and vertically.
.clipShape(Circle())	Clips the view to a shape, like a circle or rectangle.
.aspectRatio(contentMode: .fit)	Sets the aspect ratio of a view to fit or fill within its frame.
.listStyle(GroupedListStyle())	Applies a specific style to a List.
.frame(maxWidth: .infinity)	Expands the view to fill available space.
.disabled(true)	Disables interaction with a view.
.toolbar {}	Adds toolbar items to a view, such as buttons or menus.
ProgressView()	Shows a progress indicator, either determinate or indeterminate.
ColorPicker("Select Color", selection: $color)	Allows color selection in the UI.
.onChange(of: value) { newValue in }	Executes code when a specified value changes.
