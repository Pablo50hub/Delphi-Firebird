object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 411
  Width = 762
  object FDConn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Pablo\Desktop\Projeto Delphi\Data_Base\DB_SIST' +
        'EMA(2.5)\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 560
    Top = 88
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 560
    Top = 48
  end
end
