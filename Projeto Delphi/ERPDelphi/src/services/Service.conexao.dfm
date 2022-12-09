object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 300
  Width = 481
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
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 208
    Top = 64
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 24
  end
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 104
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
