@ECHO off
REM Web application environment setup

SET author= Eoussama
SET tab = " "

ECHO Enter your project name:
SET /p folderName=

MKDIR "%folderName%"
CD "%folderName%"
MKDIR scripts, styles, images

CD scripts
TYPE NUL > main.js
@ECHO // Main javascript file > main.js

CD ../styles
TYPE NUL > main.css
@ECHO * { > main.css
@ECHO %tab% %tab% %tab% %tab% margin: 0; >> main.css
@ECHO %tab% %tab% %tab% %tab% padding: 0; >> main.css
@ECHO } >> main.css

CD ../
TYPE NUL > index.html
@ECHO ^<!DOCTYPE html^> > index.html
@ECHO. >> index.html
@ECHO ^<html lang="en"^> >> index.html
@ECHO %tab% %tab% %tab% %tab% ^<head^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta charset="UTF-8"^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta name="application-name" content="%folderName%"^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta name="author" content="%author%"^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta name="description" content=""^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<meta name="keywords" content=""^> >> index.html
@ECHO. >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<link rel="stylesheet" type="text/css" href="styles/main.css"^> >> index.html
@ECHO. >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<title^>%folderName%^</title^> >> index.html
@ECHO %tab% %tab% %tab% %tab% ^</head^> >> index.html
@ECHO. >> index.html
@ECHO %tab% %tab% %tab% %tab%^<body^> >> index.html
@ECHO %tab% %tab% %tab% %tab% %tab% %tab% %tab% %tab% ^<script type="text/javascript" src="scripts/main.js"^>^</script^> >> index.html
@ECHO %tab% %tab% %tab% %tab%^</body^> >> index.html
@ECHO ^</html^> >> index.html

ECHO Web application environment created
EXIT