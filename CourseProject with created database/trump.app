���   ��  ��  (                    �t0
   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X0043Z141366757090      /  F      ]                          �      �                       WINDOWS _5X0043Z151366799633�      �  �      �                                                           WINDOWS _5X0043Z161366757388^      k  x  �  �                                                           WINDOWS _5X0043Z171366757090      !  .  <  I                                                           WINDOWS _5X0043Z181366757090�      �  �  �  �                                                           WINDOWS _5X0043Z191366757090      )  6  D  Q                                                           WINDOWS _5X0043Z1A1366757143�      �  �  �  �                                                           WINDOWS _5X0043Z1B13667996175      J  _  o  |      �  U
                                               COMMENT RESERVED                                B                                                            k                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      aTop = 0
Left = 0
Height = 262
Width = 217
DoCreate = .T.
Caption = "Form1"
Name = "Form1"
      label      label      Label1      Form1      yFontSize = 16
Caption = "Authentication"
Height = 36
Left = 24
Top = 24
Width = 168
TabIndex = 1
Name = "Label1"
      label      label      Label2      Form1      RCaption = "Login"
Height = 13
Left = 24
Top = 72
Width = 85
Name = "Label2"
      textbox      textbox      id      Form1      <Height = 25
Left = 24
Top = 96
Width = 157
Name = "id"
      label      label      Label3      Form1      VCaption = "Password"
Height = 13
Left = 24
Top = 132
Width = 85
Name = "Label3"
      textbox      textbox      password      Form1      CHeight = 25
Left = 24
Top = 156
Width = 157
Name = "password"
      commandbutton      commandbutton      Command1      Form1      XTop = 192
Left = 24
Height = 48
Width = 157
Caption = "Sign in"
Name = "Command1"
     qPROCEDURE Click
PUBLIC lg, pw

lg=INT(VAL(THISFORM.id.Text))
pw=ALLTRIM(THISFORM.password.Text)

IF LEN(pw)=0 THEN
	=MESSAGEBOX('��������� ������������ �����', 0, '������ �����������')
	FOR EACH obj IN THISFORM.Controls
		IF AT('Text',obj.Name)>0 THEN
			IF LEN(ALLTRIM(obj.Text))=0 THEN
				obj.BackColor=RGB(255,120,120)
			ENDIF
		ENDIF
	ENDFOR
	RETURN
ENDIF

SELECT * FROM realtors WHERE realtors.realtor_id==lg AND realtors.pass==pw INTO CURSOR tmp

IF RECCOUNT("tmp")>0 THEN
	PUBLIC n,sn,clid
	clid=tmp.realtor_id
	n = ALLTRIM(tmp.name)
	sn = ALLTRIM(tmp.surname)
	DO CASE
	CASE clid = 0
		DO FORM admin_menu
	OTHERWISE
		DO FORM realtor_menu
	ENDCASE 
		
	THISFORM.Caption=n+sn
	*THISFORM.Release
ELSE
	=MESSAGEBOX('��������� ������������ �����. ������������ �� ������.', 0, '������ �����������')
	RETURN
ENDIF
CLOSE TABLES

ENDPROC
     ����    �  �                        ��   %   0      �  "   ?          6  U  ` 7�  � � T�  �CC� � � g8�� T� �C� � � ��� %�C� >� ��� �@ ��C� ��������� ������������ ������ � ������ ������������x�� �� � � �� � %�C� Text� � � ��� � %�CC� � �>� ��� � T� �	 �C���x�x�^�� � � �� B� �4 o� realtors����
 � �  � �
 � � 	���� tmp� %�C� tmpN� ���� 7� � � � T� �� � �� T� �C� � ��� T� �C� � ��� H����� �� � ���� �
 admin_menu� 2��� � realtor_menu� � T� � �� � �� �T�Y ��C�5 ��������� ������������ �����. ������������ �� ������.� � ������ ������������x�� B� � 1� U  LG PW THISFORM ID TEXT PASSWORD OBJ CONTROLS NAME	 BACKCOLOR REALTORS
 REALTOR_ID PASS TMP N SN CLID SURNAME
 ADMIN_MENU REALTOR_MENU CAPTION Click,     ��1 � rQ2!���A A A A A Bb� !!� !� AA B� �A A Q 2                       f      )   �                        !Arial, 0, 9, 5, 15, 12, 32, 3, 0
    %                       �!xQ    6A > �6 c:\users\user\documents\github\db\3\authentication.scx� U  C0
   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X005PWRS1366758660      /  F      ]                          �      �                       WINDOWS _5X005PWRT1366827226�      �  �      �        �                                               WINDOWS _5X005PWRU1366827226S      h  }  �  �        A                                               WINDOWS _5X005PWRV1366759571      &  ;  K  X                                                           WINDOWS _5X005PWRW1366827226�      �  �  	  	      �	  �	                                               WINDOWS _5X005PWRX1366827226�
      �
  �
  �
  �
      W  �                                               WINDOWS _5X005PWRY1366759571i      v  �  �  �                                                           WINDOWS _5X006BGGK1366759547)      6  C  N  [                                                           COMMENT RESERVED                                �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      �Top = 0
Left = 0
Height = 266
Width = 286
DoCreate = .T.
Comment = "Realtor menu"
Caption = "Realtor Menu"
Name = "Form1"
     #PROCEDURE Activate
SELECT realtors.successes FROM realtors WHERE realtors.realtor_id==lg INTO CURSOR P
C = P.successes

THISFORM.hey.Caption = 'Hello,' + ' ' + sn + ' ' + n + '!'


IF RECCOUNT("P")>0 THEN
	THISFORM.SUCCESSES.Caption = THISFORM.SUCCESSES.Caption + C
ENDIF
ENDPROC
     ����    �  �                        b�   %         ?     /          6  U  � + o� realtors��  � ����  � � ���� P� T� �� � ��0 T� � � �� Hello,�  �	 �  �
 � !�� %�C� PN� ��� � T� � � �� � � � �� � U  REALTORS	 SUCCESSES
 REALTOR_ID LG P C THISFORM HEY CAPTION SN N Activate,     ��1 �C�A 1                             )   �                        commandbutton      commandbutton      Command1      Form1      iTop = 49
Left = 12
Height = 37
Width = 264
FontSize = 10
Caption = "Add Object"
Name = "Command1"
      .PROCEDURE Click
DO FORM add_object
ENDPROC
      ����    �   �                         H�   %   Q       f      `           6  U    �
 add_object� U 
 ADD_OBJECT Click,     ��1 !1                       #       )   �                         commandbutton      commandbutton      Command2      Form1      iTop = 97
Left = 12
Height = 37
Width = 264
FontSize = 10
Caption = "For Buyers"
Name = "Command2"
      commandbutton      commandbutton      Command3      Form1      oTop = 145
Left = 12
Height = 37
Width = 264
FontSize = 10
Caption = "Create Contract"
Name = "Command3"
      3PROCEDURE Click
DO FORM create_contract
ENDPROC
      ����    �   �                         k�   %   [       p      j           6  U    � create_contract� U  CREATE_CONTRACT Click,     ��1 q1                       (       )   �                         commandbutton      commandbutton      Command4      Form1      lTop = 193
Left = 12
Height = 37
Width = 264
FontSize = 10
Caption = "My contracts"
Name = "Command4"
      2PROCEDURE Click
DO FORM contracts_show
ENDPROC
      ����    �   �                         �e   %   Y       n      h           6  U    � contracts_show� U  CONTRACTS_SHOW Click,     ��1 a1                       '       )   �                         label      label      	Successes      Form1      �AutoSize = .T.
FontSize = 9
Caption = "Contracts Count: "
Height = 17
Left = 12
Top = 240
Width = 97
Name = "Successes"
      label      label      Hey      Form1      fAutoSize = .T.
FontSize = 14
Caption = ""
Height = 25
Left = 2
Top = 2
Width = 2
Name = "Hey"
      CArial, 0, 9, 5, 15, 12, 32, 3, 0
Arial, 0, 10, 6, 16, 13, 35, 3, 0
0!   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X0080KUM1366760844      /  F      ]                          �      �                       WINDOWS _5X0080KUN1366801583�      �  �      �                                                           WINDOWS _5X0080KUO1366760844v      �  �  �  �                                                           WINDOWS _5X0080KUP1366760844�      �  �  �  �                                                           WINDOWS _5X0080KUQ1366760844%      4  C  R  _                                                           WINDOWS _5X0080KUR1366760844�      �  �  �  �                                                           WINDOWS _5X0080KUS13667608447      F  U  b  o                                                           WINDOWS _5X0080KUT1366760844�      �  �  �  �                                                           WINDOWS _5X0080KUU1366760844L      [  j  v  �                                                           WINDOWS _5X0080KUV1366762273�      �  �                                                               WINDOWS _5X0080KUW1366760844+
      8
  E
  S
  `
                                                           WINDOWS _5X0080KUX1366760844�
      �
  �
  �
  �
                                                           WINDOWS _5X0080KUY1366799933D      Y  n  ~  �      �  Z                                               WINDOWS _5X0080KUZ1366760844�      �  �  �  �                                                           WINDOWS _5X0080KV01366760844h      u  �  �  �                                                           WINDOWS _5X0080KV11366760844�          $  1                                                           WINDOWS _5X0080KV21366792752z      �  �  �  �                                                           WINDOWS _5X0080KV31366792752        '  5  B                                                           WINDOWS _5X0080KV41366792752�      �  �  �  �                                                           WINDOWS _5X0080KUM1366792752N      ]  l  y  �                                                           WINDOWS _5X0080KV61366792752�      �  �                                                               WINDOWS _5X0080KV71366792752�      �  �  �  �                                                           WINDOWS _5X0080KUM1366792752      %  2  A  N                                                           WINDOWS _5X0080KUM1366792752�      �  �  �  �                                                           WINDOWS _5X0080KUM1366792752\      k  z  �  �                                                           WINDOWS _5X008C1EY1366792752�      �      $                                                           WINDOWS _5X008C1F01366801583�      �  �  �  �      M  �$                                               WINDOWS _5X008JBKO13667927522*      A*  P*  \*  i*                                                           WINDOWS _5X009GT4Y1366792752�*      �*  �*  �*  �*                                                           WINDOWS _5X009GT4Z1366792752a+      p+  +  �+  �+                                                           WINDOWS _5X00A3GGL1366792752�+      �+  ,  ,  &,                                                           COMMENT RESERVED                                |,                                                            ,�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      yTop = -3
Left = 3
Height = 378
Width = 512
DoCreate = .T.
Caption = "Adding Object"
FontSize = 11
Name = "Form1"
      label      label      Label1      Form1      �FontSize = 12
FontStrikethru = .F.
FontUnderline = .F.
FontCondense = .F.
FontExtend = .F.
Alignment = 2
Caption = "Information about owner"
Height = 32
Left = 12
Top = 12
Width = 492
Name = "Label1"
      label      label      Label2      Form1      aFontSize = 9
Caption = "Surname"
Height = 13
Left = 2
Top = 60
Width = 60
Name = "Label2"
      textbox      textbox      surname      Form1      AHeight = 21
Left = 63
Top = 56
Width = 107
Name = "surname"
      label      label      Label3      Form1      RCaption = "Name"
Height = 13
Left = 173
Top = 60
Width = 61
Name = "Label3"
      textbox      textbox      name1      Form1      @Height = 21
Left = 236
Top = 56
Width = 103
Name = "name1"
      label      label      Label4      Form1      XCaption = "Patronymic"
Height = 13
Left = 341
Top = 60
Width = 61
Name = "Label4"
      textbox      textbox      patr      Form1      ?Height = 21
Left = 406
Top = 56
Width = 103
Name = "patr"
      optiongroup      optiongroup      Optiongroup1      Form1     ButtonCount = 3
Value = 1
ControlSource = "dadsd"
Height = 66
Left = 12
Top = 88
Width = 71
Name = "Optiongroup1"
Option1.Caption = "Male"
Option1.Value = 1
Option1.Height = 17
Option1.Left = 5
Option1.Top = 5
Option1.Width = 61
Option1.Name = "Option1"
Option2.Caption = "Female"
Option2.Height = 17
Option2.Left = 5
Option2.Top = 24
Option2.Width = 61
Option2.Name = "Option2"
Option3.Caption = "Other"
Option3.Height = 17
Option3.Left = 5
Option3.Top = 43
Option3.Width = 61
Option3.Name = "Option3"
      label      label      Label5      Form1      VCaption = "Passport"
Height = 17
Left = 108
Top = 99
Width = 61
Name = "Label5"
      textbox      textbox      passport      Form1      CHeight = 23
Left = 172
Top = 96
Width = 229
Name = "passport"
      commandbutton      commandbutton      Command1      Form1      VTop = 84
Left = 408
Height = 68
Width = 103
Caption = "Check"
Name = "Command1"
     iPROCEDURE Click
LOCAL m1, g, fn, ln, pas, patr

fn=ALLTRIM(THISFORM.name1.Text)
ln=ALLTRIM(THISFORM.surname.Text)
patr=ALLTRIM(THISFORM.patr.Text)
pas=ALLTRIM(THISFORM.passport.Text)

IF LEN(ALLTRIM(THISFORM.SURNAME.Text))=0 THEN
  THISFORM.SURNAME.BackColor=RGB(255,120,120) 
ENDIF
IF LEN(ALLTRIM(THISFORM.NAME1.Text))=0 THEN
  THISFORM.NAME1.BackColor=RGB(255,120,120) 
ENDIF
IF LEN(ALLTRIM(THISFORM.PATR.Text))=0 THEN
  THISFORM.PATR.BackColor=RGB(255,120,120) 
ENDIF
IF LEN(ALLTRIM(THISFORM.PASSPORT.Text))=0 THEN
  THISFORM.PASSPORT.BackColor=RGB(255,120,120) 
ENDIF
IF LEN(ALLTRIM(THISFORM.PHONE.Text))=0 THEN
  THISFORM.PHONE.BackColor=RGB(255,120,120) 
ENDIF
FOR EACH ob IN THISFORM.Objects
	IF ob.BackColor = RGB(255, 120, 120) THEN
		ob.BackColor = RGB(255, 120, 120)
	ELSE 
		FOR EACH obj IN THISFORM.Objects
			obj.Visible = .T.
		ENDFOR
	ENDIF 
ENDFOR
IF THISFORM.Optiongroup1.Value=1 THEN
	g='M'
ENDIF 
IF THISFORM.OPtiongroup1.Value=2 THEN
	g = 'F'
ENDIF
IF thisform.optiongroup1.Value=3 then
 g = 'N'
ENDIF
SELECT MAX(owners.owner_id)+1 AS m1 FROM owners INTO CURSOR tmp1
LOCAL clid
clid1=tmp1.m1

IF ISNULL(clid1) THEN
	clid1=1
ENDIF
CLOSE TABLES

INSERT INTO owners(owner_id, gender, name, passport, patronymic, surname);
VALUES(clid1, g, fn, pas, patr, ln)
=MESSAGEBOX('Client was added', 0, 'Congrat!')
ENDPROC
     5���                              Sd   %   b      �  1   q          6  U  m ��  � � � � � � T� �C� � � ��� T� �C� �	 � ��� T� �C� � � ��� T� �C� �
 � ��� %�CC� �	 � �>� ��� � T� �	 � �C���x�x�^�� � %�CC� � � �>� ��� � T� � � �C���x�x�^�� � %�CC� � � �>� ��� T� � � �C���x�x�^�� � %�CC� �
 � �>� ��W� T� �
 � �C���x�x�^�� � %�CC� � � �>� ���� T� � � �C���x�x�^�� � �� � � �� %�� � C���x�x�^���� T� � �C���x�x�^�� �
� �� � � �� T� � �a�� �� � �� %�� � � ���7� T� �� M�� � %�� � � ���`� T� �� F�� � %�� � � ����� T� �� N�� �* o� owners�C� � ����Q�  ��� tmp1� �� � T� �� �  �� %�C� ����� T� ���� � 1�M r�� owners� � � �
 � �	 ��� ��� ��� ��� ��� ��� ��* ��C� Client was added� � Congrat!�x�� U  M1 G FN LN PAS PATR THISFORM NAME1 TEXT SURNAME PASSPORT	 BACKCOLOR PHONE OB OBJECTS OBJ VISIBLE OPTIONGROUP1 VALUE OWNERS OWNER_ID TMP1 CLID CLID1 GENDER NAME
 PATRONYMIC Click,     ��1 �RQQQ��A ��A ��A ��A ��A !��� !� A A A q� A q� A q� A �q � � A Q ��1                       ^      )                           label      label      Label6      Form1      �FontSize = 12
Alignment = 2
Caption = "Information about object"
Height = 32
Left = 12
Top = 180
Visible = .F.
Width = 492
Name = "Label6"
      label      label      Label7      Form1      TCaption = "Phone"
Height = 17
Left = 108
Top = 132
Width = 61
Name = "Label7"
      textbox      textbox      phone      Form1      AHeight = 23
Left = 172
Top = 129
Width = 229
Name = "phone"
      textbox      textbox      address      Form1      QHeight = 23
Left = 62
Top = 224
Visible = .F.
Width = 100
Name = "address"
      label      label      Label8      Form1      dCaption = "Address"
Height = 20
Left = 13
Top = 228
Visible = .F.
Width = 50
Name = "Label8"
      label      label      Label9      Form1      cCaption = "Metro"
Height = 17
Left = 167
Top = 228
Visible = .F.
Width = 40
Name = "Label9"
      textbox      textbox      metro      Form1      PHeight = 23
Left = 205
Top = 224
Visible = .F.
Width = 100
Name = "metro"
      label      label      Label10      Form1      lCaption = "Maximum price"
Height = 17
Left = 312
Top = 227
Visible = .F.
Width = 85
Name = "Label10"
      textbox      textbox      price      Form1      PHeight = 23
Left = 403
Top = 223
Visible = .F.
Width = 100
Name = "price"
      label      label      Label11      Form1      cCaption = "Rooms"
Height = 17
Left = 14
Top = 260
Visible = .F.
Width = 47
Name = "Label11"
      label      label      Label12      Form1      eCaption = "Square"
Height = 17
Left = 165
Top = 259
Visible = .F.
Width = 47
Name = "Label12"
      textbox      textbox      square      Form1      QHeight = 23
Left = 205
Top = 255
Visible = .F.
Width = 100
Name = "square"
      label      label      Label13      Form1      cCaption = "Type"
Height = 17
Left = 313
Top = 260
Visible = .F.
Width = 47
Name = "Label13"
      commandbutton      commandbutton      Command2      Form1      oTop = 324
Left = 12
Height = 49
Width = 494
Caption = "Add in database"
Visible = .F.
Name = "Command2"
     �PROCEDURE Click
LOCAL patr, g, pas, phone, met, adr, prc, ro, sq, ty, fl, m1, m2
phone=ALLTRIM(THISFORM.phone.Text)
adr=ALLTRIM(THISFORM.address.Text)
prc=ALLTRIM(THISFORM.price.Text)
ro=ALLTRIM(THISFORM.Numb.Text)
sq=ALLTRIM(THISFORM.square.Text)
ty=ALLTRIM(THISFORM.type.Text)
fl = ALLTRIM(THISFORM.floor.Text)
met = ALLTRIM(THISFORM.metro.Text)

FOR EACH obj IN THISFORM.Objects
	IF AT('Text',obj.Name)>0 AND LEN(ALLTRIM(obj.Text))=0 THEN
		obj.BackColor=RGB(255,120,120)
	ENDIF
ENDFOR
SELECT MAX(owners.owner_id) AS m1 FROM owners INTO CURSOR tmp1
LOCAL clid1
clid1=tmp1.m1

IF ISNULL(clid1) THEN
	clid1=1
ENDIF
*price, rooms, square, type, owner_id, phone, floor, metro)
* VAL(prc), VAL(ro), VAL(sq), ty, clid1, VAL(phone), INT(VAL(fl))
SELECT MAX(a.apart_id)+1 AS m2 FROM apartments a INTO CURSOR tmp2
LOCAL clid
clid=tmp2.m2

IF ISNULL(clid) THEN
	clid=1
ENDIF

CLOSE TABLES

INSERT INTO apartments(apart_id, address, metro, price, owner_id, rooms, square, phone, floor, type);
VALUES (clid, adr, met, VAL(prc), clid1, VAL(ro), VAL(sq), phone, VAL(fl), ty)

=MESSAGEBOX('Object was added', 0, 'Congrat!')

* refresh control values
FOR EACH obj IN THISFORM.Controls
		IF AT('Text',obj.Name)>0 THEN
			obj.value=''
		ENDIF
		IF AT('Combo',obj.Name)>0 THEN
			obj.value=0
		ENDIF
		IF AT('Option',obj.Name)>0 THEN
			obj.value=1
		ENDIF
	ENDFOR
ENDPROC
     S���    :  :                        �_   %   �      �  *   �          6  U  e7 ��  � � � � � � � � �	 �
 � � � T� �C� � � ��� T� �C� � � ��� T� �C� � � ��� T� �C� � � ��� T� �C� � � ��� T�	 �C� � � ��� T�
 �C� � � ��� T� �C� � � ��� �� � � �=�/ %�C� Text� � � � CC� � �>� 	��9� T� � �C���x�x�^�� � ��& o� owners�C� � ���Q� ��� tmp1� �� � T� �� � �� %�C� ����� T� ���� �1 o�
 apartmentsQ�  �C�� ����Q� ��� tmp2� ��" � T�" ��! � �� %�C�" ���� T�" ���� � 1�� r��
 apartments� � � � � �# � � � � ���" ��� ��� ��C� g��� ��C� g��C� g��� ��C�
 g���	 ��* ��C� Object was added� � Congrat!�x�� �� � �$ �^� %�C� Text� � � ���� T� �% ��  �� � %�C� Combo� � � ��'� T� �% �� �� � %�C� Option� � � ��Z� T� �% ���� � �� U&  PATR G PAS PHONE MET ADR PRC RO SQ TY FL M1 M2 THISFORM TEXT ADDRESS PRICE NUMB SQUARE TYPE FLOOR METRO OBJ OBJECTS NAME	 BACKCOLOR OWNERS OWNER_ID TMP1 CLID1 APART_ID
 APARTMENTS A TMP2 CLID ROOMS CONTROLS VALUE Click,     ��1 qQQQQQQQQ"��A A aq � � A q � � A R �#�A �A �A A 1                       w      )   :                        textbox      textbox      type      Form1      OHeight = 21
Left = 360
Top = 256
Visible = .F.
Width = 144
Name = "type"
      label      label      Label14      Form1      cCaption = "Floor"
Height = 23
Left = 12
Top = 300
Visible = .F.
Width = 47
Name = "Label14"
      textbox      textbox      floor      Form1      NHeight = 22
Left = 60
Top = 299
Visible = .F.
Width = 93
Name = "floor"
      textbox      textbox      numb      Form1      NHeight = 20
Left = 60
Top = 257
Visible = .F.
Width = 102
Name = "numb"
      CArial, 0, 11, 7, 17, 14, 40, 3, 0
Arial, 0, 9, 5, 15, 12, 32, 3, 0
0	   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X016APWJ1366793625      /  F      ]                          �      �                       WINDOWS _5X016APWK1366795253�      �  �      �                                                           WINDOWS _5X016APWL1366793625C      P  ]  k  x                                                           WINDOWS _5X016APWM1366795253�          +  8      �  �                                               WINDOWS _5X016APWN1366795253�      �  �  �  �      I  �                                               WINDOWS _5X016APWO1366793625�	      �	  �	  �	  �	                                                           WINDOWS _5X016APWP1366795253*
      ?
  T
  d
  q
      �
  '                                               COMMENT RESERVED                                                                                            F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      FTop = 0
Left = 0
DoCreate = .T.
Caption = "ADMIN"
Name = "Form1"
      label      label      Label1      Form1      qFontSize = 16
Alignment = 2
Caption = "Admin"
Height = 37
Left = 12
Top = 12
Width = 348
Name = "Label1"
      commandbutton      commandbutton      Command1      Form1      STop = 60
Left = 12
Height = 36
Width = 158
Caption = "Add"
Name = "Command1"
      /PROCEDURE Click
DO FORM add_rieltor
ENDPROC
      ����    �   �                         �   %   S       h      b           6  U    � add_rieltor� U  ADD_RIELTOR Click,     ��1 11                       $       )   �                         commandbutton      commandbutton      Command2      Form1      ^Top = 60
Left = 204
Height = 36
Width = 158
Caption = "Delete tables"
Name = "Command2"
     �PROCEDURE Click
ZAP IN apartments
ALTER TABLE apartments ALTER COLUMN id I AUTOINC NEXTVALUE 1
ZAP IN realtors
ALTER TABLE realtors ALTER COLUMN id I AUTOINC NEXTVALUE 1
ZAP IN buyers
ALTER TABLE buyers ALTER COLUMN id I AUTOINC NEXTVALUE 1
ZAP IN contracts
ALTER TABLE contracts ALTER COLUMN id I AUTOINC NEXTVALUE 1
ZAP IN owners
ALTER TABLE owners ALTER COLUMN id I AUTOINC NEXTVALUE 1
ENDPROC
     ����    �  �                        ��   %   /      V     >          6  U  �  S�  �" i1�
 apartments��� � I������ S� �  i1� realtors��� � I������ S� � i1� buyers��� � I������ S� �! i1�	 contracts��� � I������ S� � i1� owners��� � I������ U 
 APARTMENTS ID REALTORS BUYERS	 CONTRACTS OWNERS Click,     ��1 � !� � �� � �1                       �      )   �                        textbox      textbox      Text1      Form1      @Height = 96
Left = 12
Top = 108
Width = 349
Name = "Text1"
      commandbutton      commandbutton      Command3      Form1      YTop = 216
Left = 12
Height = 25
Width = 350
Caption = "Complete"
Name = "Command3"
      MPROCEDURE Click
LOCAL cmd
cmd=ALLTRIM(THISFORM.Text1.Text)
&cmd
ENDPROC
      ����    �   �                         i�   %   s       �      �           6  U  '  ��  � T�  �C� � � ��� &cmd
 U  CMD THISFORM TEXT1 TEXT Click,     ��1 q Q� 1                       B       )   �                         !Arial, 0, 9, 5, 15, 12, 32, 3, 0
0   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X017ASRB1366794628      /  F      ]                          �      �                       WINDOWS _5X017ASRC1366827158�      �  �      �                                                           WINDOWS _5X017ASRD1366794628^      k  x  �  �                                                           WINDOWS _5X017ASRE1366799521      '  <  L  Y      �  �                                               WINDOWS _5X017ASRF1366794628�      �  �  �  �                                                           WINDOWS _5X017ASRG1366799559      "  1  >  K                                                           WINDOWS _5X017ASRH1366799559�      �  �  �  �                                                           WINDOWS _5X017ASRI1366799559$      3  B  O  \                                                           WINDOWS _5X017ASRJ1366794628�      �  �  �  �                                                           WINDOWS _5X017ASRK1366794628#      0  =  K  X                                                           COMMENT RESERVED                                �                                                            �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      aTop = 0
Left = 0
Height = 168
Width = 375
DoCreate = .T.
Caption = "Form1"
Name = "Form1"
      label      label      Label1      Form1      wFontSize = 16
Alignment = 2
Caption = "ADD RIELTOR"
Height = 37
Left = 12
Top = 12
Width = 348
Name = "Label1"
      commandbutton      commandbutton      Command1      Form1      TTop = 96
Left = 180
Height = 61
Width = 192
Caption = "Add"
Name = "Command1"
     3PROCEDURE Click
LOCAL pw, sn, n, p, tn

pw=ALLTRIM(THISFORM.Text3.Text)
sn=ALLTRIM(THISFORM.Text2.Text)
n=ALLTRIM(THISFORM.Text1.Text)

IF LEN(pw)=0 OR LEN(sn)=0 OR LEN(n)=0 THEN
	=MESSAGEBOX('Check correct input', 0, 'Authentication error')
	FOR EACH obj IN THISFORM.Controls
		IF AT('Text',obj.Name)>0 THEN
			IF LEN(ALLTRIM(obj.Text))=0 THEN
				obj.BackColor=RGB(255,120,120)
			ENDIF
		ENDIF
	ENDFOR
	RETURN
ENDIF



SELECT MAX(realtors.realtor_id)+1 AS m FROM realtors INTO CURSOR tmp
CLOSE TABLES

LOCAL clid
clid=tmp.m

IF ISNULL(clid) THEN
	clid=1
ENDIF
*, surname, name, pass, successes
*, sn, n, pw, 0
INSERT INTO realtor(realtor_id, surname, name, pass, successes) VALUE(clid, sn, n, pw, 0)

=MESSAGEBOX('Rieltor has been added', 0, 'Congrat!')
THISFORM.Release
ENDPROC
     ����    t  t                        B>   %   �      +     �          6  U   ��  � � � � � T�  �C� � � ��� T� �C� � � ��� T� �C� �	 � ���- %�C�  >� �
 C� >� �
 C� >� ��,�9 ��C� Check correct input� � Authentication error�x�� ��
 � � �$� %�C� Text�
 � � �� � %�CC�
 � �>� ��� T�
 � �C���x�x�^�� � � �� B� �+ o� realtors�C� � ����Q� ��� tmp� 1� �� � T� �� � �� %�C� ����� T� ���� �D r�� realtor� � � � � ��� ��� ��� ���  ��� ��0 ��C� Rieltor has been added� � Congrat!�x��
 �� � � U  PW SN N P TN THISFORM TEXT3 TEXT TEXT2 TEXT1 OBJ CONTROLS NAME	 BACKCOLOR REALTORS
 REALTOR_ID M TMP CLID SURNAME PASS	 SUCCESSES RELEASE Click,     ��1 qRQQ��!���A A A A A �Q r � � A C� 1                       (      )   t                        label      label      Label2      Form1      QCaption = "Name"
Height = 25
Left = 12
Top = 60
Width = 36
Name = "Label2"
      textbox      textbox      Text1      Form1      ?Height = 23
Left = 48
Top = 57
Width = 120
Name = "Text1"
      label      label      Label3      Form1      UCaption = "Surname"
Height = 25
Left = 180
Top = 60
Width = 52
Name = "Label3"
      textbox      textbox      Text2      Form1      @Height = 23
Left = 235
Top = 57
Width = 135
Name = "Text2"
      textbox      textbox      Text3      Form1      ?Height = 23
Left = 72
Top = 117
Width = 96
Name = "Text3"
      label      label      Label4      Form1      VCaption = "Password"
Height = 17
Left = 11
Top = 120
Width = 57
Name = "Label4"
      !Arial, 0, 9, 5, 15, 12, 32, 3, 0
0   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5N518WMHD1334224675      /  F      ]                          �      �                       WINDOWS _5N518WMHE1366827143�      �  �      �      {  �                                               WINDOWS _5N518WMHD1366826688	      	  '	  4	  A	      �	  p
                                               WINDOWS _5N51CHNOQ1366826688�      �  �  �  �      b  F                                               WINDOWS _5N518WMHD1366827143�      �  �  �        l  �                                               WINDOWS _5N51D33LS1366826688v      �  �  �  �      �  :                                               WINDOWS _5N51D33LT1366826688      %  4  A  N      �  �                                               WINDOWS _5N51D33LU1366823703�      �  �  �  �                                                           WINDOWS _5N51D33LV1366823703Z      g  t  �  �                                                           WINDOWS _5N51D33LW1366826688�      �  
    $        �                                               WINDOWS _5N51D33LX1366823703�      �  �  �  �                                                           WINDOWS _5N51D33LY13668266886      E  T  a  n      �                                                 WINDOWS _5N51D33LZ1366823703�      �                                                                 WINDOWS _5N51D33M01366827023~      �  �  �  �      (  w#                                               WINDOWS _5N615BFF91366823703"(      /(  <(  J(  W(                                                           WINDOWS _5N518WMHD1366823703�(      �(  �(  �(  �(                                                           WINDOWS _5N702SJT91366823703D)      Q)  ^)  l)  y)                                                           WINDOWS _5X108IEQW1366826824�)      �)  �)  *  *                                                           COMMENT RESERVED                                z*                                                            *�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      ~Top = -1
Left = 42
Height = 552
Width = 661
DoCreate = .T.
BorderStyle = 1
Caption = "�������� ������"
Name = "Form1"
     UPROCEDURE Activate
PUBLIC id1, id2, id3
id1=0
id2=0
id3=0
SELECT surname as Surname, name as Name, gender as Gender, patronymic as Patronymic, phone as Phone, passport as Passort, buyer_id FROM buyers INTO CURSOR statq 
SELECT rooms as Rooms, address as Address, metro as Metro, price as Price, square as Square, type as Type, phone as Phone, floor as Floor, apart_id, owner_id FROM apartments INTO CURSOR statq1
THISFORM.Grid1.Enabled= .T.
THISFORM.Grid2.Enabled= .T.
THISFORM.Grid1.RecordSource = 'statq'
THISFORM.gRID2.RecordSource = 'statq1'
ENDPROC
PROCEDURE Load



ENDPROC
     /���                              ��   %   �      �     �          6  U  ] 7�  � � � T�  �� �� T� �� �� T� �� ��Y o� buyers�� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� �Q�	 ��
 ���� statq�x o�
 apartments�� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� ��� ���� statq1� T� � � �a�� T� � � �a�� T� � � �� statq�� T� � � �� statq1�� U  ID1 ID2 ID3 SURNAME NAME GENDER
 PATRONYMIC PHONE PASSPORT PASSORT BUYER_ID BUYERS STATQ ROOMS ADDRESS METRO PRICE SQUARE TYPE FLOOR APART_ID OWNER_ID
 APARTMENTS STATQ1 THISFORM GRID1 ENABLED GRID2 RECORDSOURCE  U   Activate,     �� Load|    ��1 � � � � ����2 4                       +        F  J      )                           grid      grid      Grid1      Form1      [Height = 157
Left = 12
Top = 144
Width = 637
AllowCellSelection = .F.
Name = "Grid1"
      �PROCEDURE Click
LOCAL active_row

active_row=THIS.ActiveRow

IF active_row=0 THEN
	active_row=1
ENDIF

SELECT statq
SCAN RECORD active_row
	id1=statq.buyer_id
	EXIT
ENDSCAN
ENDPROC
     U���    <  <                        d�   %   �       �      �           6  U  i  ��  � T�  �� � �� %��  � ��5 � T�  ���� � F� � ~#��  ��b � T� �� � �� !� � U 
 ACTIVE_ROW THIS	 ACTIVEROW STATQ ID1 BUYER_ID Click,     ��1 q � A r � A A 1                       �       )   <                        grid      grid      Grid2      Form1      [Height = 157
Left = 12
Top = 336
Width = 637
AllowCellSelection = .F.
Name = "Grid2"
      �PROCEDURE Click
LOCAL active_row

active_row=THIS.ActiveRow

IF active_row=0 THEN
	active_row=1
ENDIF

SELECT statq1
SCAN RECORD active_row
	id2=statq1.apart_id
	id3=statq1.owner_id
	EXIT
ENDSCAN
ENDPROC
     w���    ^  ^                        �7   %   �            �           6  U  y  ��  � T�  �� � �� %��  � ��5 � T�  ���� � F� � ~#��  ��r � T� �� � �� T� �� � �� !� � U 
 ACTIVE_ROW THIS	 ACTIVEROW STATQ1 ID2 APART_ID ID3 OWNER_ID Click,     ��1 q � A r � A A 1                       �       )   ^                        commandbutton      commandbutton      Command1      Form1      XTop = 504
Left = 12
Height = 37
Width = 133
Caption = "������!"
Name = "Command1"
     $PROCEDURE Click
LOCAL ch, m
IF (THISFORM.Check1.Value = 0) THEN 
	ch = .F.
ELSE
	ch = .T.
ENDIF 

SELECT MAX(contract.contract)+1 AS m FROM contract INTO CURSOR tm

LOCAL clid4
clid4=tm.m

IF ISNULL(clid4) THEN
	clid4=1
ENDIF

IF id1>0 AND id2>0 THEN
	CLOSE TABLES
	INSERT INTO contract(contract, apart_id, buyer_id, date, check, owner_id, realtor_id) VALUE(clid4, id2, id1, DATE(), ch, id3, clid)
	=MESSAGEBOX('Contract added!', 0, 'Congrat!')
ELSE
	=MESSAGEBOX('Choose client and apartments', 0, 'ERROR')
ENDIF

ENDPROC
     ����    �  �                        �>   %   ;      t     J          6  U  � ��  � � %�� � � � ��. � T�  �-�� �A � T�  �a�� �* o� contract�C� � ����Q� ��� tm� �� � T� �� � �� %�C� ���� � T� ���� � %�� � � �	 � 	��H� 1�X r�� contract� �
 � � � � � ��� ���	 ��� ��C$���  ��� ��� ��) ��C� Contract added!� � Congrat!�x�� ���3 ��C� Choose client and apartments� � ERROR�x�� � U  CH M THISFORM CHECK1 VALUE CONTRACT TM CLID4 ID1 ID2 APART_ID BUYER_ID DATE CHECK OWNER_ID
 REALTOR_ID ID3 CLID Click,     ��1 � �� � � A �r � � A �Q ��� 1A 2                             )   �                        textbox      textbox      Text3      Form1      ?Height = 25
Left = 12
Top = 36
Width = 120
Name = "Text3"
      =PROCEDURE Click
THIS.BackColor=RGB(255,255,255)

ENDPROC
      ����    �   �                         E�   %   ]       r      l           6  U    T�  � �C�������^�� U  THIS	 BACKCOLOR Click,     ��1 �2                       2       )   �                         textbox      textbox      Text4      Form1      SHeight = 25
Left = 144
SpecialEffect = 0
Top = 36
Width = 120
Name = "Text4"
      =PROCEDURE Click
THIS.BackColor=RGB(255,255,255)

ENDPROC
      ����    �   �                         E�   %   ]       r      l           6  U    T�  � �C�������^�� U  THIS	 BACKCOLOR Click,     ��1 �2                       2       )   �                         label      label      Label4      Form1      SCaption = "Name"
Height = 13
Left = 144
Top = 12
Width = 120
Name = "Label4"
      label      label      Label5      Form1      UCaption = "Surname"
Height = 13
Left = 12
Top = 12
Width = 120
Name = "Label5"
      textbox      textbox      Text5      Form1      SHeight = 25
Left = 276
SpecialEffect = 0
Top = 36
Width = 120
Name = "Text5"
      =PROCEDURE Click
THIS.BackColor=RGB(255,255,255)

ENDPROC
      ����    �   �                         E�   %   ]       r      l           6  U    T�  � �C�������^�� U  THIS	 BACKCOLOR Click,     ��1 �2                       2       )   �                         label      label      Label6      Form1      YCaption = "Patronymic"
Height = 13
Left = 276
Top = 12
Width = 120
Name = "Label6"
      textbox      textbox      Text6      Form1      SHeight = 25
Left = 492
SpecialEffect = 0
Top = 36
Width = 156
Name = "Text6"
      =PROCEDURE Click
THIS.BackColor=RGB(255,255,255)

ENDPROC
      ����    �   �                         E�   %   ]       r      l           6  U    T�  � �C�������^�� U  THIS	 BACKCOLOR Click,     ��1 �2                       2       )   �                         label      label      Label7      Form1      WCaption = "Passport"
Height = 13
Left = 492
Top = 12
Width = 168
Name = "Label7"
      commandbutton      commandbutton      Command2      Form1      [Top = 72
Left = 12
Height = 37
Width = 120
Caption = "Find Buyers"
Name = "Command2"
     GPROCEDURE Click
LOCAL sn_to_find, n_to_find, p_to_find, pn_to_find

sn_to_find=ALLTRIM(THISFORM.Text3.Text)
n_to_find=ALLTRIM(THISFORM.Text4.Text)
p_to_find=ALLTRIM(THISFORM.Text5.Text)
pn_to_find=ALLTRIM(THISFORM.Text6.Text)

IF LEN(pn_to_find)>0 THEN
	SELECT surname as Surname, name as Name, gender as Gender, patronymic as Patronymic, phone as Phone, passport as Passport, buyer_id FROM buyers;
	WHERE ALLTRIM(buyers.passport)=pn_to_find;
	INTO CURSOR statq
ELSE
	IF LEN(sn_to_find)>0 AND LEN(n_to_find)>0 AND LEN(p_to_find)>0 THEN
		SELECT surname as Surname, name as Name, gender as Gender, patronymic as Patronymic, phone as Phone, passport as Passport, buyer_id FROM buyers;
		WHERE ALLTRIM(buyers.surname)=sn_to_find;
			AND ALLTRIM(buyers.name)=n_to_find;
			AND ALLTRIM(buyers.patronymic)=p_to_find;
		INTO CURSOR statq
	ELSE
		=MESSAGEBOX('Check correct of data! Write surname, name, patronymic or passport',0,'ERROR')
		RETURN
	ENDIF
ENDIF

THISFORM.Grid1.Enabled= .T.
THISFORM.Grid2.Enabled= .T.

THISFORM.Grid1.RecordSource='statq'

THISFORM.Grid1.AutoFit()
FOR EACH col IN THISFORM.Grid1.Columns
	col.AutoFit()
ENDFOR

THISFORM.Grid2.AutoFit()
FOR EACH col IN THISFORM.Grid1.Columns
	col.AutoFit()
ENDFOR

RAISEEVENT(THISFORM.Grid1, 'Click')
RAISEEVENT(THISFORM.Grid2, 'Click')



ENDPROC
     ����    �  �                        �   %   �      A               6  U  � ��  � � � � T�  �C� � � ��� T� �C� � � ��� T� �C� � � ��� T� �C� �	 � ��� %�C� >� ��� �h o� buyers��
 �Q�
 �� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� ���C� � �� ���� statq� ��- %�C�  >� �
 C� >� 	�
 C� >� 	����� o� buyers��
 �Q�
 �� �Q� �� �Q� �� �Q� �� �Q� �� �Q� �� ���C� �
 ��  � C� � �� 	� C� � �� 	���� statq� ��Y ��C�B Check correct of data! Write surname, name, patronymic or passport� � ERROR�x�� B� � � T� � � �a�� T� � � �a�� T� � � �� statq�� ��C� � � �� �� � � � �x� ��C� � �� �� ��C� � � �� �� � � � ��� ��C� � �� �� ��C� � � Click�� ��C� � � Click�� U 
 SN_TO_FIND	 N_TO_FIND	 P_TO_FIND
 PN_TO_FIND THISFORM TEXT3 TEXT TEXT4 TEXT5 TEXT6 SURNAME NAME GENDER
 PATRONYMIC PHONE PASSPORT BUYER_ID BUYERS STATQ GRID1 ENABLED GRID2 RECORDSOURCE AUTOFIT COL COLUMNS Click,     ��1 1RQQQ2�� ��� �A A A �Q� A Q� A rq4                       <      )   �                        label      label      Label1      Form1      PCaption = "or"
Height = 24
Left = 432
Top = 36
Width = 24
Name = "Label1"
      label      label      Label2      Form1      XCaption = "Apartments"
Height = 12
Left = 12
Top = 312
Width = 97
Name = "Label2"
      label      label      Label3      Form1      TCaption = "Client"
Height = 13
Left = 12
Top = 120
Width = 97
Name = "Label3"
      checkbox      checkbox      Check1      Form1      bTop = 84
Left = 240
Height = 13
Width = 98
Alignment = 0
Caption = "Check"
Name = "Check1"
      !Arial, 0, 9, 5, 15, 12, 32, 3, 0
0   m                 �  PLATFORM   C                  UNIQUEID   C	   
               TIMESTAMP  N   
               CLASS      M                  CLASSLOC   M!                  BASECLASS  M%                  OBJNAME    M)                  PARENT     M-                  PROPERTIES M1                  PROTECTED  M5                  METHODS    M9                  OBJCODE    M=                 OLE        MA                  OLE2       ME                  RESERVED1  MI                  RESERVED2  MM                  RESERVED3  MQ                  RESERVED4  MU                  RESERVED5  MY                  RESERVED6  M]                  RESERVED7  Ma                  RESERVED8  Me                  USER       Mi                                                                                                                                                                                                                                                                                          COMMENT Screen                                                                                              WINDOWS _5X108XTDJ1366827336      /  F      ]                          �      �                       WINDOWS _5X108XTDK1366827425�      �  �      �      b  T                                               WINDOWS _5X108XTDL1366827336�      �  �  �                                                             COMMENT RESERVED                                P                                                            y                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 VERSION =   3.00      dataenvironment      dataenvironment      Dataenvironment      YTop = 0
Left = 0
Width = 0
Height = 0
DataSource = .NULL.
Name = "Dataenvironment"
      1      1      form      form      Form1      eTop = 0
Left = 0
Height = 443
Width = 672
DoCreate = .T.
Caption = "Contracts"
Name = "Form1"
      �PROCEDURE Activate
SELECT contract.* FROM contract INTO CURSOR x
THISFORM.Grid1.Enabled= .T.
THISFORM.Grid1.RecordSource = 'x'
THISFORM.Grid1.AutoFit()
FOR EACH col IN THISFORM.Grid1.Columns
	col.AutoFit()
ENDFOR


ENDPROC
     z���    a  a                        �   %   �         	             6  U  x  o� contract�  Ǽ�� x� T� � � �a�� T� � � �� x�� ��C� � � �� �� � � � �q � ��C� � �� �� U	  CONTRACT X THISFORM GRID1 ENABLED RECORDSOURCE AUTOFIT COL COLUMNS Activate,     ��1 �AQ� A 3                       �       )   a                        grid      grid      Grid1      Form1      @Height = 372
Left = 24
Top = 36
Width = 624
Name = "Grid1"
      !Arial, 0, 9, 5, 15, 12, 32, 3, 0
.\ authentication.scx authentication.sct c:\users\user\appdata\local\temp\ 0000e2o905lj.fxp realtor_menu.scx realtor_menu.sct add_object.scx add_object.sct admin_menu.scx admin_menu.sct add_rieltor.scx add_rieltor.sct create_contract.scx create_contract.sct contracts_show.scx contracts_show.sct 	)   t                 t  �                  �  L  )   K           	L  �      \           �  �-      m           	�-  �?      ~           �?  �l      �           	�l  ft      �           ft  ��      �           	��  щ      �           щ  ��      �           	��  =�      �           =�  ��      �           	��  
�                
�  ��                