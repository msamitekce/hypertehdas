# HyperTehdas
## HTML Generating Script

### Info

This project is made for Kajaani AMK's Linux Course as an assignment for "Scripting exercise" by Sami Tekce.  

This script creates HTML HEAD boilerplate by a dialog.  

You can conact me: bgm187@myy.haaga-helia.fi  


### Instructions

Run the **hypertehdas** script and answer questions.

Questions usually have tree-like structure. If you answer no, you can't see following questions under that branch. If you say no to all questions you will have only empty *html head* and *body* tags in your HTML file.  

#### Visual structure of questions:

```
html
│
└── head (y/n)
    │
    ├── title (text)
    │
    ├── meta (y/n)
    │   │
    │   ├── keywords (y/n) > (text)
    │   ├── description (y/n) > (text)
    │   └── author (y/n) > (text)
    │
    └── CSS (y/n)
        │
        └── Number of files (number)
                │
        	└── File name (text)

```

### Important Notes

- Don't add .htlm to your answer.
- You can answer HTML name question with relative directory name. (e.g. ./anotherfile/FILENAME or FILENAME to have ./FILENAME.html)

- If you answer "y" (yes) to the **HEAD** question, viewport will be added too.

- Don't add .css to your answer.
- You can answer CSS name question with relative directory name. (e.g. ./css/FILENAME or FILENAME to have ./FILENAME.css)


### To Be Added

I hope to continue this project and my current plan is:  
- Creating a parent folder and adding the file to there
- Adding CSS path question (to parent folder or a new ./css/ folder)
- Adding semantic empty tags to body tag (HEADER NAV MAIN FOOTER)
- Adding Navigation creator (e.g. h1 ul > li > a ) 
