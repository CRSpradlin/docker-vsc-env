# !/user/bin/python3
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