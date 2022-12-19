inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  ClientHeight = 488
  ClientWidth = 789
  ExplicitWidth = 789
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 789
    inherited lblTitulo: TLabel
      Width = 656
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
    inherited pnlFechar: TPanel
      Left = 697
    end
  end
  inherited pnlRodape: TPanel
    Top = 453
    Width = 789
    inherited btnNovo: TSpeedButton
      Left = 293
    end
    inherited btnEditar: TSpeedButton
      Left = 391
    end
    inherited btnCancelar: TSpeedButton
      Left = 489
    end
    inherited btnSalvar: TSpeedButton
      Left = 596
    end
    inherited btnExcluir: TSpeedButton
      Left = 694
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 789
    Height = 418
    inherited CardPanel_Lista: TCardPanel
      Width = 787
      Height = 418
      ActiveCard = card_pesquisa
      inherited card_pesquisa: TCard
        Width = 787
        Height = 418
        inherited pnlTituloPesquisa: TPanel
          Width = 787
        end
        inherited DBG_dados: TDBGrid
          Width = 777
          Height = 308
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
        Width = 787
        Height = 418
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
  end
end
