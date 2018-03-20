# Web application environment setup
---

## Description
It gets too repetitive at times to setup your project environment, it's at most cases very a quick and easy task to do, but sometimes it can get pretty messy. Here's an executable file to help you out, while not anything remarkable, it does save time, you're only a click away from setting up a basic web application environment, consisting of an *HTML*, a **javascript**, and a **CSS** file, aswell as few additional libraries.

## Usage
> At the very first time of opening the file do the following:
- Open the *.bat* file with any text editor.
- Change the `author`'s variable to yours.
- Toggle additional files on/off by setting their variable's values to true/false respectively, for example (`SET jQuery=true`), all those files are inside of the *resources* folder.
- Save the changes.

> Once you've changed the author's name to yours, you may freely use the executable as follows:
- Run the *.bat* file.
- Input your project's name, description, and keywords.

Done, how fast was that? by default, a folder with your project's name will be created, containing 3 subfolders, images, styles, and scripts(*you can edit their names in the .bat file*). all three are pretty self-explanatory, the **CSS** file is by default containing reset instructions for the global padding and margin, and the **HTML** file contains the typical HTML format to start with.
There is always the ability to add optional files, more about that below...

## Additional files
> When opening the .bat folder, at the very top of the you can find few variables that you may change as you please.

|**Variable**|**Values**|**Description**|
|------------|----------|---------------|
|`author`    |string    |The creator's name that will be included in the `<meta name="author" content="">` HTML tag.|
|`scriptFolder`|string|The name of the folder that's going to contain all of your _javascript_ scripts.|
|`styleFolder`|string|The name of the folder that's going to contain all of your _CSS_ scripts.|
|`imagesFolder`|string|The name of the folder that's going to contain all of your images.|
|`eomponents`|(string "true/false")|Setting this to true will include the [__EOmponent__](https://github.com/EOussama/EOmponents)'s _CSS_ file.|
|`bootstrap`|(string "true/false")|Setting this to true will include the [__boostrap 4__](https://getbootstrap.com/)'s _CSS_ and _JS_ minified packages.|
|`jQuery`|(string "true/false")|Setting this to true will include a minified [__jQuery 3.3.1__](https://jquery.com/) file.|
|`Font Awesome`|(string "true/false")|Setting this to true will include the [__Font Awesome__](https://fontawesome.com/)'s _CDN_ in your _index.html_ file.|

**Note**: Setting `bootstrap` to true will have `jQuery` auto set to true too, as the latter requires jQuery to work properly.
