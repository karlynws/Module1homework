# Module2

a)Describe the two size classes in iOS. 

-The two size classes are compact and regular. So if you are designing an iOS app, swift has the compact and regular layouts so that the code will update when you turn your phone to landscape orientation and look good on a variety of screen sizes without your having to code specifically for each one. 

b) What is Continuous Learning, and why is it important in mobile development? 

-Continuous Learning is keeping up with the newest versions, methodologies, technologies standards in your field so that you can produce the most up to date products for a better user experience. For example, this course shows the previous version of swift and we get to see how things are progressing, such as the ContentView going from a struct to the Preview Macro. 

c) How can you find out what modifiers a View has? 

-Control click in x code, or click the + in upper right corner in x code and click on the modifiers tab to see check out whats available in the library. 

d) What is a breakpoint? 

-While you’re testing with the debugger you can have your code stop at a specified point so can find your errors and what is going on in that area of the code.

e) How can you access environment values in your App? 

-Use @Environment for the environment variables. 

f) How can you determine, in code, if the App is in Dark or Light Mode? 

-You can set in code into the @Environment variable. 

g) Why are magic numbers an issue, and how should you avoid them? 

-It is hard to know where they came from, where you got them, what they need to be, so its better practice to create a constants file to store and define them. 

h) How can you view your App in Light and Dark Modes simultaneously? 

-Set up two #Preview macros using preferredColorScheme  

i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area? 

-The order of your modifiers, every time you add a modifier it shows a new view to reflect that. So the example below you had some text, added a background color to it, then changed the font foreground color to white, THEN added padding around that. IF you want the whole button area you would do padding and THEN the background color. 


j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code. 

-.padding(.horizontal,10)

k) Provide two reasons why you would want to extract views. 

-You can extract views for cleaner code, easier to read, and so you can easily reuse code that you’ve already done the work for!

l) How can you determine, in code, if the device is in Portrait or Landscape mode? 

-Again, all I can think is to check out the #Preview but to hard code it you can specify with the @Environment to toggle how your layout appears for each orientation. 

m) What is a literal value? 

-A literal value base level type such as the built in String, Int, Double

o) What are the safe areas? 

-The safe areas are the top and bottom of the screen where apple has the signal strength, wifi, battery, etc, where you may not want your app features getting in the way of those things. 

p) This line of code was in the lesson on animation. Can you state in English what the line means?
.frame(width: wideShapes ? 200 : 100) 

-For the frame, if the wide shapes is true then use 200 and if false use 100 for the width value. 

q) Describe the two transitions you were introduced to in this week’s lesson.

-We were exposed to withAnimation  and .animation  (.easeInOut…) and .transition(.scale) as well as .slide, and .opacity.

r) In Bullseye, the Game struct is what type of object? is struct an object? Is Game observable? In content mode we use @State for the Game... I am having a hard time with this question. 

s) What are SFSymbols? 

-SF Symbols are Apples built in icons or symbols that integrate well into apples designs.

t) What is the difference between “step into” and “step over " in the debugger? 

-In the debugger step into the next line of code and any method which is called and step over means move on to next line of code including any methods. 

u) Name some items you would place in the Asset Catalog (Assets.) 

-You would place your apps colors, images, & icon image in your Asset Catalog.  

v) How do you change the Display Name of your app? 

-To change the Display Name of your app click on top level of your folder (in our example: Bullseye) and under General and in Identity you can change the Display Name.


