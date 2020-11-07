# !/user/bin/python3

#TODO: de-commit the previous commit
#TODO: Need to still install python tkinter and physics related modules
#TODO: No edits have been done yet

from tkinter import *

from tkinter import messagebox

top = Tk()
top.geometry("300x200")
def helloCallBack():
    print("Hello World")
def closeCallBack():
    top.destroy()
helloBtn = Button(top, text = "Hello", command = helloCallBack)
helloBtn.place(x=120, y=50)
closeBtn = Button(top, text = "Close", command = closeCallBack)
closeBtn.place(x=120, y=150)
top.mainloop()