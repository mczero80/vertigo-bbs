Procedure DrawNodeSpyScreen;
Const
  IMAGEDATA_WIDTH=80;
  IMAGEDATA_DEPTH=25;
  IMAGEDATA_LENGTH=1114;
  IMAGEDATA : array [1..1114] of Char = (
     #1,#16,'�','�',#25,#10, #8,'�','�',#25, #3, #7,'�', #0,#23,'�',#16,
    #25,#23, #9,#26, #4,'�',#25, #9,#14,'�','�','�', #7,'�', #0,#23,'�',
    #16,#25, #8, #7,'�', #0,#23,'�', #8,#16,'g','j','!',#24,' ', #9,#17,
    '�',#16,'�',#17,'�', #1,#16,'�',#25, #4, #8,'�',' ','�',' ',' ','�',
    ' ', #1,'�','�', #9,'�',#17,'�',#11,#16,'�','�', #9,#17,'�','�',#16,
    #25, #5, #8,'�',#25, #5,#11,#17,'�', #9,#16,#26, #3,'�', #1,'�', #9,
    '�','�',#11,'�','�', #9,'�',#11,'�', #9,#26, #3,'�',#14,'�',' ','�',
    '�','�',#15,'�','�',#14,'�','�','�','�','�','�', #1,'�', #9,#26, #4,
    '�',#17,'�','�','�','�', #1,#16,'�',#24,' ', #9,'�','�',#11,'�','�',
     #9,#17,'�', #1,#16,'�',#25, #5, #8,'�','�', #1,'�', #9,#17,'�','�',
    '�','�','�','�','�','�','�',#16,' ', #8,#23,'�',#16,'�','�',' ',' ',
    '�',' ',' ', #1,'�', #9,#17,'�',#16,#26, #5,'�','�','�',#17,'�',#16,
    #26, #4,'�',#17,#26, #3,'�',#16,#25, #3,#14,'�',#26, #3,'�','�','�',
     #1,'�', #9,'�','�',#11,'�','�', #9,'�',#11,'�', #9,#26, #4,'�','�',
     #8,'�',#24,#11,#23,'�',#16,' ', #9,'�',#26, #3,'�',#17,'�', #1,#16,
    '�', #8,'�','�',#23,'�',#16,'�', #1,'�', #9,#17,'�','�',#11,#16,'�',
     #9,#17,'�','�',#16,'�',#17,'�','�','�','�','�',#16,' ', #8,#17,'�',
    #16,' ', #9,#17,'�','�','�','�','�','�','�',#16,'�','�','�',#17,'�',
     #1,#16,'�',' ',' ', #8,'�','�',' ', #9,'�','�','�','�','�',' ', #8,
    '�',' ', #9,'�','�','�',' ',#14,'�','�', #9,#26, #4,'�',#14,'�','�',
     #1,'�', #9,'�',#17,'�',#16,' ', #8,'�','�',' ', #1,'�', #9,'�','�',
    '�', #1,'�', #8,'�',#24,#23,'�',#16,' ', #9,'�',#17,'�','�','�',#16,
    '�','�',#17,'�','�',#16,'�','�',#17,'�','�',#16,'�',#17,'�','�','�',
    '�',#16,'�', #1,'�', #9,'�',#17,'�','�','�', #1,#16,'�',' ',' ', #9,
    #17,'�','�','�','�','�',#16,' ', #1,'�', #9,#17,'�',#16,'�','�',#17,
    '�','�','�','�', #1,#16,'�', #8,'�',' ', #9,#17,'�','�','�','�','�',
    #16,' ', #8,#17,'�',#16,' ', #9,#17,'�','�','�','�','�',#16,' ',#11,
    '�','�', #9,'�','�','�','�','�',#17,'�','�','�',#16,' ', #8,'�',' ',
     #1,'�', #9,'�',#17,'�','�','�',#16,' ', #8,#23,'�',#24,#16,'�',' ',
     #1,'�', #9,#17,'�','�','�', #1,#16,'�',' ',' ','�', #9,#17,'�','�',
     #1,#16,'�',' ',' ','�', #9,#17,'�','�','�', #1,#16,'�',' ','�', #9,
    #17,#26, #3,'�', #1,#16,'�','�','�', #9,#17,'�','�','�', #1,#16,'�',
    ' ', #8,'�',' ',' ', #1,'�','�', #9,#17,#26, #3,'�', #1,#16,'�',' ',
    '�', #9,#17,'�','�','�', #1,#16,'�','�', #8,'�',' ', #9,#17,#26, #3,
    '�', #1,#16,'�', #9,'�',#17,#26, #3,'�',#16,'�', #1,'�', #9,'�',#17,
    '�','�','�', #1,#16,'�', #8,'�',' ', #9,#17,'�','�','�', #1,#16,'�',
     #9,'�',' ', #8,#17,'�',#24, #1,#16,'�','�','�',#26, #3,'�',' ', #8,
    #17,'�',#16,#26, #3,'�','�',' ', #1,#26, #4,'�',' ', #8,'�','�',' ',
     #1,#26, #3,'�',#26, #3,'�','�',#26, #9,'�','�','�',' ','�',#26, #3,
    '�','�','�',#26, #4,'�', #9,'�',#17,#26, #4,'�',#16,' ', #1,'�',#26,
     #3,'�',#26, #4,'�',' ', #8,'�','�','�',#24,'�','�','�',' ', #1,'�',
    '�','�',' ', #8,'�',' ',' ','�','�','�',#26, #6,'�','�',#26, #4,'�',
    ' ', #1,'�','�','�','�',' ','�','�','�','�','�','�','�',#26, #3,'�',
    ' ', #8,'�','�','�',' ', #1,#26, #7,'�',' ',' ',#26, #4,'�',#25, #3,
    #26, #6,'�',' ', #8,'�','�','�',#24,#25, #7,'�',#25,#11,'�',#25, #5,
     #1,'�','�',#25,#10, #8,'�',#25, #3,'�',#26,#12,'�',' ','�',#25, #2,
    #15,'N', #7,'o','d','e',' ',#15,'S', #7,'p','y',#25, #2, #8,'�','�',
    #24,'�',' ',#15,'#', #7,'#','#',' ', #8,'�','�',' ',#15,'U', #7,'s',
    'e','r',' ', #8,#26,#19,'�',' ',#15,'A', #7,'c','t','i','o','n',' ',
     #8,#26,'$','�',#24,#24,#24,#24,#24,#24,#24,#26,#10,'�',' ',#15,'T',
     #7,'o','d','a','y',' ', #8,#26, #5,'�',' ',#15,'T', #7,'o','t','a',
    'l', #8,'�',' ',#15,'H', #7,'o','u','r','l','y',' ', #8,#26,#17,'�',
    ' ',#15,'W', #7,'e','e','k','l','y',' ', #8,'�',' ',#15,'M', #7,'o',
    'n','t','h','l','y',' ', #8,#26, #3,'�',#24,#25, #4,#15,'C', #7,'a',
    'l','l','s',#24,' ',#15,'N', #7,'e','w',' ',#15,'U', #7,'s','e','r',
    's',#24,' ',#15,'M', #7,'s','g',' ',#15,'P', #7,'o','s','t','s',#24,
    #25, #3,#15,'E', #7,'m','a','i','l','s',#24,' ',#15,'D', #7,'o','w',
    'n','l','o','a','d','s',#24,#25, #2,#15,'U', #7,'p','l','o','a','d',
    's',#25,#21, #9,'A', #7,'1','2','3','4','5','6','7','8','9','0','1',
     #9,'P', #7,'1','2','3','4','5','6','7','8','9','0','1',' ',' ','S',
    'M','T','W','T','F','S',' ',' ','J','F','M','A','M','J','J','A','S',
    'O','N','D',#24,#24, #9,#17,'�',#25, #8,#15,'E','S','C', #7,'/',#15,
    'Q','u','i','t',#25, #4,'A','R','R','O','W','S', #7,'/',#15,'S','e',
    'l','e','c','t',#25, #4,'E','N','T','E','R', #7,'/',#15,'S','e','l',
    'e','c','t',#25, #3,'S','P','A','C','E', #7,'/',#15,'T','e','r','m',
    'i','n','a','l',#25, #6, #9,'�',#24);
Begin
  Screen.LoadScreenImage(ImageData, ImageData_Length, ImageData_Width, 1, 1);
End;