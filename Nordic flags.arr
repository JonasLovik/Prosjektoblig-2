use context essentials2021
norway-flag=
overlay-xy(rectangle(20, 160, "solid", "blue"), -70, 0, 
  overlay-xy(rectangle(220, 20, "solid", "blue"), 0, -70,
    overlay-xy(rectangle(40, 160, "solid", "white"), -60, 0,
      overlay-xy(rectangle(220, 40, "solid", "white"), 0, -60,
          rectangle(220, 160, "solid", "red")))))
denmark-flag=
    overlay-xy(rectangle(40, 280, "solid", "white"), -120, 0,  
      overlay-xy(rectangle(370, 40, "solid", "white"), 0, -120,  
        rectangle(370, 280, "solid", "red")))
sweden-flag=
overlay-xy(rectangle(20, 100, "solid", "yellow"), -40, 0, 
  overlay-xy(rectangle(160, 20, "solid", "yellow"), 0, -40, 
    rectangle(160, 100, "solid", "blue")))
finland-flag=
overlay-xy(rectangle(30, 110, "solid", "blue"), -40 , 0, 
  overlay-xy(rectangle(180, 30, "solid", "blue"), 0 ,-40, 
    rectangle(180, 110, "solid", "white")))
  iceland-flag=
overlay-xy(rectangle(20, 180, "solid", "red"), -80, 0, 
  overlay-xy(rectangle(250, 20, "solid", "red"), 0 ,-80, 
    overlay-xy(rectangle(40, 180, "solid", "white"), -70, 0, 
      overlay-xy(rectangle(250, 40, "solid", "white"), 0, -70, 
        rectangle(250, 180, "solid", "blue")))))
 faroe-islands-flag=
overlay-xy(rectangle(20, 160, "solid", "red"), -70, 0, 
  overlay-xy(rectangle(220, 20, "solid", "red"), 0, -70,
    overlay-xy(rectangle(40, 160, "solid", "blue"), -60, 0,
      overlay-xy(rectangle(220, 40, "solid", "blue"), 0, -60,
        rectangle(220, 160, "solid", "white")))))
#ERRORMESSAGE 
errormessage = "Har du sjekket om input er skrevet riktig?"

#INPUT
draw-flag = "denmark"


if draw-flag == "norway":
  norway-flag
else if draw-flag == "denmark":
  denmark-flag
else if draw-flag == "sweden":
  sweden-flag
else if draw-flag == "finland":
  finland-flag
else if draw-flag == "iceland":
  iceland-flag
else if draw-flag == "faroe-islands":
  faroe-islands-flag
else: errormessage 
end
