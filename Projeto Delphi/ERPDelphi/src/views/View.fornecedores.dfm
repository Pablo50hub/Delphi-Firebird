inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    ExplicitWidth = 1024
    inherited lblTitulo: TLabel
      Width = 891
      Height = 29
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
    inherited pnlFechar: TPanel
      ExplicitLeft = 932
    end
  end
  inherited pnlRodape: TPanel
    ExplicitTop = 515
    ExplicitWidth = 1024
  end
  inherited pnlLinhaFundo: TPanel
    ExplicitWidth = 1024
    ExplicitHeight = 480
    inherited CardPanel_Lista: TCardPanel
      ActiveCard = card_pesquisa
      ExplicitWidth = 1022
      ExplicitHeight = 480
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
              Title.Caption = 'Nome do fornecedor'
              Width = 308
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        ExplicitWidth = 1022
        ExplicitHeight = 480
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 857
    Top = 59
  end
end
