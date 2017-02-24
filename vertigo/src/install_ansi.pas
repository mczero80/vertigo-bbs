Procedure DrawMainMenu;
const
  IMAGEDATA_WIDTH=80;
  IMAGEDATA_DEPTH=25;
  IMAGEDATA_LENGTH=903;
  IMAGEDATA : array [1..903] of Char = (
    #15,#16,#25,'<',#14,'�',#24, #3,'�','�',#25,#10, #8,'�','�',#25, #3,
     #7,'�', #0,#23,'�',#16,#25,#23,#11,#26, #4,'�',#25, #9,#14,'�','�',
    '�', #7,'�', #0,#23,'�',#16,#25, #8, #7,'�', #0,#23,'�', #8,#16,'g',
    'j','!',#24,' ',#11,#19,'�','�','�', #3,#16,'�',#25, #4, #8,'�',' ',
    '�',' ',' ','�',' ', #3,'�', #0,#19,'�',#11,#16,'�',#19,'�',#15,'�',
    '�',#11,'�','�',#16,#25, #5, #8,'�',#25, #5,#15,#23,'�',#11,#16,#26,
     #3,'�', #3,'�',#11,'�','�',#15,#23,'�','�',#11,#19,'�',#15,#23,'�',
    #11,#16,#26, #3,'�',#14,'�',' ','�','�','�',#15,'�','�',#14,'�','�',
    '�','�','�','�', #3,'�',#11,#26, #4,'�',#19,'�',#16,'�','�',#19,'�',
     #3,#16,'�',#24,' ',#11,'�',#19,'�',#15,'�','�',#11,'�', #3,#16,'�',
    #25, #5, #8,'�','�', #3,'�',#11,#19,'�','�','�','�','�','�','�','�',
    '�',#16,' ', #8,#23,'�',#16,'�','�',' ',' ','�',' ',' ', #3,'�',#11,
    #19,'�','�','�','�',#16,'�','�',#19,'�',#16,'�','�',#19,'�',#26, #4,
    '�',#26, #3,'�',#16,#25, #3,#14,'�',#26, #3,'�','�','�', #3,'�',#11,
    #19,'�','�',#15,#23,'�','�',#11,#19,'�',#15,#23,'�',#11,#19,#26, #4,
    '�',#16,'�', #8,'�',#24,#15,#23,'�',#16,' ',#11,'�',#19,#26, #3,'�',
    '�', #3,#16,'�', #8,'�','�',#23,'�',#16,'�', #3,'�',#11,#19,'�','�',
    #15,#23,'�',#11,#19,'�','�',#16,'�',#19,'�','�','�','�','�',#16,' ',
     #8,#19,'�',#16,' ',#11,#19,'�','�','�','�',#16,'�','�','�',#19,'�',
    '�','�','�', #3,#16,'�',' ',' ', #8,'�','�',' ',#11,'�',#19,'�','�',
    '�',#16,'�',' ', #8,'�',' ',#11,'�','�','�',' ',#14,'�','�',#11,#26,
     #4,'�',#14,'�','�', #3,'�',#11,#19,'�','�',#16,' ', #8,'�','�',' ',
     #3,'�',#11,#19,'�','�','�', #3,#16,'�', #8,'�',#24,#23,'�',#16,' ',
    #11,'�',#19,'�','�','�','�',#16,'�',#19,'�',#16,'�','�','�','�',#19,
    '�',#16,'�',#19,'�','�','�','�',#16,'�', #3,'�',#11,'�',#19,'�','�',
    '�', #3,#16,'�',' ',' ',#11,#19,'�','�','�',#16,'�','�',' ', #3,'�',
    #11,#19,'�','�','�','�','�','�','�', #3,#16,'�', #8,'�',' ',#11,#19,
    '�','�','�','�',#16,'�',' ', #8,#19,'�',#16,' ',#11,#19,'�','�','�',
    '�','�',#16,' ',#15,#23,'�','�',#11,#19,'�','�',#16,'�','�','�',#19,
    '�','�','�',#16,' ', #8,'�',' ', #3,'�',#11,'�',#19,'�','�','�',#16,
    ' ', #8,#23,'�',#24,#16,'�',' ', #3,'�',#11,#19,'�','�','�', #3,#16,
    '�',' ',' ','�',#11,#19,'�','�', #3,#16,'�',' ',' ','�',#11,#19,'�',
    '�','�', #3,#16,'�',' ','�',#11,#19,#26, #3,'�', #3,#16,'�','�','�',
    #11,#19,'�','�','�', #3,#16,'�',' ', #8,'�',' ',' ', #3,'�','�',#11,
    #19,#26, #3,'�', #3,#16,'�',' ','�',#11,#19,'�','�','�', #3,#16,'�',
    '�', #8,'�',' ',#11,#19,#26, #3,'�', #3,#16,'�','�',#11,#19,#26, #3,
    '�',#16,'�', #3,'�',#11,'�',#19,'�','�','�', #3,#16,'�', #8,'�',' ',
    #11,#19,'�','�','�', #3,#16,'�',#11,'�',' ', #8,#19,'�',#24, #3,#16,
    '�', #0,#19,'�', #3,#16,'�','�','�',#19,' ',#16,'�',' ', #8,#19,'�',
    #16,#26, #3,'�','�',' ', #3,#26, #4,'�',' ', #8,'�','�',' ', #3,#26,
     #3,'�',#26,#14,'�', #0,#19,'�','�',#16,' ', #3,'�',#26, #3,'�','�',
    '�',#26, #4,'�',#11,'�',#19,#26, #4,'�',#16,' ', #3,'�',#26, #3,'�',
    #26, #4,'�',' ', #8,'�','�','�',#24,'�','�','�',' ', #3,'�','�','�',
    ' ', #8,'�',' ',' ','�','�','�',#26, #6,'�','�',#26, #4,'�',' ', #3,
    '�','�','�','�','�','�', #0,#19,'�', #3,#16,'�','�','�','�','�',#26,
     #3,'�',' ', #8,'�','�','�',' ', #3,#26, #7,'�',' ',' ',#26, #4,'�',
    #25, #3,#26, #6,'�',' ', #8,'�','�','�',#24,#25, #7,'�',#25,#11,'�',
    #25, #5, #3,'�', #0,#19,'�',#16,#25,#10, #8,'�',#25, #3,'�',#26,#12,
    '�',' ','�',#25,#13,'�','�',#24,#25,#20,'�','�','�',#25,#17,'�',' ',
    '�','�','�',#24,#24,#24,#24,#24,#24,#24,#24,#24,#24,#24,#24,#25,#17,
     #7,'V','i','s','i','t',' ',#15,'w','w','w','.','m','y','s','t','i',
    'c','b','b','s','.','c','o','m',' ', #7,'f','o','r',' ','l','a','t',
    'e','s','t',' ','u','p','d','a','t','e','s','!',#24,#24, #8,#26,'N',
    '�',#24);
Begin
  Screen.LoadScreenImage(ImageData, ImageData_Length, ImageData_Width, 1, 1);
  Screen.WriteXY (1, 13, 7, strPadC('Vertigo BBS Installation Utility Version ' + mysVersion, 79, ' '));
  Screen.WriteXY (1, 14, 7, strPadC('Copyright (C) 1997-2012 By James Coyle.  All Rights Reserved.', 79, ' '));
End;