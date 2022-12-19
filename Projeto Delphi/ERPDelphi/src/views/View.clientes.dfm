inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
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
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
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
        ExplicitLeft = -16
        ExplicitTop = -16
        object lbl1: TLabel
          Left = 48
          Top = 112
          Width = 65
          Height = 13
          Caption = 'PES_CODIGO'
          FocusControl = edtPES_CODIGO
        end
        object lbl2: TLabel
          Left = 314
          Top = 112
          Width = 59
          Height = 13
          Caption = 'PES_RAZAO'
          FocusControl = edtPES_RAZAO
        end
        object lbl3: TLabel
          Left = 663
          Top = 112
          Width = 74
          Height = 13
          Caption = 'PES_FANTASIA'
          FocusControl = edtPES_FANTASIA
        end
        object lbl4: TLabel
          Left = 314
          Top = 168
          Width = 74
          Height = 13
          Caption = 'PES_TELEFONE'
          FocusControl = edtPES_TELEFONE
        end
        object lbl5: TLabel
          Left = 119
          Top = 112
          Width = 68
          Height = 13
          Caption = 'PES_CNPJCPF'
          FocusControl = edtPES_CNPJCPF
        end
        object lbl6: TLabel
          Left = 48
          Top = 168
          Width = 48
          Height = 13
          Caption = 'PES_IERG'
          FocusControl = edtPES_IERG
        end
        object lbl7: TLabel
          Left = 48
          Top = 233
          Width = 92
          Height = 13
          Caption = 'PES_OBSERVACAO'
          FocusControl = edtPES_OBSERVACAO
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
          Top = 128
          Width = 65
          Height = 21
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtPES_RAZAO: TDBEdit
          Left = 314
          Top = 131
          Width = 343
          Height = 21
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 663
          Top = 128
          Width = 350
          Height = 21
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 314
          Top = 184
          Width = 255
          Height = 21
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 119
          Top = 128
          Width = 189
          Height = 21
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_IERG: TDBEdit
          Left = 48
          Top = 184
          Width = 260
          Height = 21
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 48
          Top = 249
          Width = 965
          Height = 21
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
