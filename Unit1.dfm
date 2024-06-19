object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Modbus TCP'
  ClientHeight = 441
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 20
    Width = 60
    Height = 13
    Caption = 'IP Address'
  end
  object Label2: TLabel
    Left = 100
    Top = 20
    Width = 33
    Height = 13
    Caption = ':'
  end
  object Label3: TLabel
    Left = 26
    Top = 110
    Width = 68
    Height = 13
    Caption = 'Register (dec)'
  end
  object Label4: TLabel
    Left = 100
    Top = 80
    Width = 33
    Height = 13
    Caption = ':'
  end
  object Label5: TLabel
    Left = 100
    Top = 110
    Width = 23
    Height = 13
    Caption = ':'
  end
  object Label6: TLabel
    Left = 26
    Top = 140
    Width = 33
    Height = 13
    Caption = 'Length'
  end
  object Label7: TLabel
    Left = 26
    Top = 80
    Width = 39
    Height = 13
    Caption = 'Address'
  end
  object Label8: TLabel
    Left = 100
    Top = 140
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label9: TLabel
    Left = 26
    Top = 50
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object Label10: TLabel
    Left = 100
    Top = 50
    Width = 4
    Height = 13
    Caption = ':'
  end
  object btRead: TButton
    Left = 24
    Top = 176
    Width = 99
    Height = 41
    Caption = 'Read'
    TabOrder = 0
    OnClick = btReadClick
  end
  object Memo1: TMemo
    Left = 246
    Top = 8
    Width = 259
    Height = 417
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object edIP: TEdit
    Left = 119
    Top = 18
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '192.168.10.102'
  end
  object edRegister: TEdit
    Left = 119
    Top = 108
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    Text = '5000'
  end
  object edLength: TEdit
    Left = 119
    Top = 138
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '6'
  end
  object btClear: TButton
    Left = 136
    Top = 176
    Width = 104
    Height = 41
    Caption = 'Clear'
    TabOrder = 5
    OnClick = btClearClick
  end
  object edAddress: TEdit
    Left = 119
    Top = 80
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    Text = '1'
  end
  object Edit1: TEdit
    Left = 119
    Top = 48
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 7
    Text = '502'
  end
  object IdModBusClient1: TIdModBusClient
    ConnectTimeout = 0
    Host = '192.168.10.102'
    IPVersion = Id_IPv4
    ReadTimeout = 1000
    TimeOut = 5000
    UnitID = 1
    Left = 64
    Top = 320
  end
end
