---
author: enthudrives
comments: true
date: 2010-06-22 03:21:00+00:00
layout: post
link: https://tsuganthi.wordpress.com/2010/06/22/my-first-c-application/
slug: my-first-c-application
title: My first C++ application
wordpress_id: 31
categories:
- application
- c++ gui
- c++ interface
- how to
- project
- qt
- qt beginner
- tutorial
---

This blog describes how to create a basic C++ application using qt-creator.
Prerequisites:



	
  * [qt-creator](http://qt.nokia.com/downloads)

	
  * gcc

	
  * g++

	
  * make

	
  * basic C++ knowledge


You can install gcc, g++, make by using yum or apt-get depending on which linux distro you use.

Now let us start with our application. It is to get the name of the user and display a welcome message.

1. Open Qt creator

2. File->New file or Project


[![](http://tsuganthi.files.wordpress.com/2010/06/qtwindow1.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/qtwindow1.png)


Enter the path where your project should reside.


[![](http://tsuganthi.files.wordpress.com/2010/06/qtwindow2.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/qtwindow2.png)


The first window that has to appear in our project is a Dialog box that reads the user name. So I choose QDialog as the base class.


[![](http://tsuganthi.files.wordpress.com/2010/06/qtwindow3.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/qtwindow3.png)


3. Design the Dialog box(dialog.ui) as you wish.


[![](http://tsuganthi.files.wordpress.com/2010/06/qtwindow4.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/qtwindow4.png)


4. The task is to display a welcome message once the user presses the OK button. This is accomplished by Signals and slots.
Here, clicking the OK button is the signal and displaying the message is the slot(in the constructor of dialog.cpp).  Declare shownext() in dialog.h under pubic slots.


<blockquote>

> 
> <blockquote>Dialog::Dialog(QWidget *parent) : QDialog(parent), ui(new Ui::Dialog)
{

ui->setupUi(this);   **connect(ui->ok,SIGNAL(clicked()),this,SLOT(shownext()));**</blockquote>
> 
> 
</blockquote>




<blockquote>

> 
> <blockquote>setWindowTitle("My Application");//To set the title of the  dialog box.
}</blockquote>
> 
> 
</blockquote>


5. Now let us define the slot(in dialog.cpp).


<blockquote>void Dialog::shownext()
{
hide(); //to hide the dialog box which reads the name
QMessageBox::information(this,"Welcome","Congratulations,you made it !");
}</blockquote>


We are almost done. Click on Build->Run.  Or click on the green coloured triangle(like play button) in the left side pane.


[![](http://tsuganthi.files.wordpress.com/2010/06/q7.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/q7.png)




[![](http://tsuganthi.files.wordpress.com/2010/06/q9.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/q9.png)


6. Let us display the user name in the welcome message.

We need to get the name entered in the text box (whose object name is "name") and display it along with the welcome message.


<blockquote>ui->name->text();</blockquote>


This reads the text entered in the text box.  Let us get it in a QString variable and display it along with the message.


<blockquote>void Dialog::shownext()
{
QString str=ui->name->text();
hide();
QMessageBox::information(this,"Welcome","Congratulations,you made it "+str + " !");</blockquote>


}

Run the code again. Yes! We made it!


[![](http://tsuganthi.files.wordpress.com/2010/06/q8.png?w=300)](http://tsuganthi.files.wordpress.com/2010/06/q8.png)


Your binary file will be present in the folder where this project resides. In my case it is in /home/enthudrives/Projects/test.

You have just created an application. Your task is NOT over with this. Documentation work is as important as development work. Documentation includes creating a proper README file and INSTALL instructions.
The template of a proper README can be obtained from this
[http://gitorious.org/gpa-calculator/gpa-calculator/blobs/master/README](http://gitorious.org/gpa-calculator/gpa-calculator/blobs/master/README)

Use a version management system(git) to manage your project efficiently.
[http://shakthimaan.com/downloads/glv/presentations/di-git-ally-managing-love-letters.pdf](http://shakthimaan.com/downloads/glv/presentations/di-git-ally-managing-love-letters.pdf)
The above pdf is very useful to learn git.

For more details, visit
[http://www.gnu.org/prep/standards/standards.html](http://www.gnu.org/prep/standards/standards.html)
