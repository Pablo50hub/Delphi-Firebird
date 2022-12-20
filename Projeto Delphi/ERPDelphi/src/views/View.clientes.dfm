inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 68
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_Lista: TCardPanel
      inherited card_pesquisa: TCard
        ExplicitWidth = 1022
        ExplicitHeight = 480
        inherited pnlTituloPesquisa: TPanel
          ExplicitWidth = 1022
        end
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Cliente'
              Width = 229
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 120
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        object lbl1: TLabel
          Left = 48
          Top = 112
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 314
          Top = 112
          Width = 124
          Height = 21
          Caption = 'Nome do Cliente'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 663
          Top = 112
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 314
          Top = 176
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 119
          Top = 112
          Width = 78
          Height = 21
          Caption = 'CNPJ / CPF'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 48
          Top = 173
          Width = 34
          Height = 21
          Caption = 'IERG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 48
          Top = 249
          Width = 87
          Height = 42
          Caption = 'Observa'#231#227'o'#13#10
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = 15329769
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastrato: TLabel
            Left = 37
            Top = 6
            Width = 190
            Height = 30
            Caption = 'Cadastro de Clientes'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPES_CODIGO: TDBEdit
          Left = 48
          Top = 139
          Width = 65
          Height = 21
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          ReadOnly = True
          TabOrder = 1
        end
        object edtPES_RAZAO: TDBEdit
          Left = 314
          Top = 139
          Width = 343
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 663
          Top = 139
          Width = 350
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 314
          Top = 200
          Width = 255
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 119
          Top = 139
          Width = 189
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_IERG: TDBEdit
          Left = 48
          Top = 200
          Width = 260
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 48
          Top = 273
          Width = 965
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 921
    Top = 43
  end
end
