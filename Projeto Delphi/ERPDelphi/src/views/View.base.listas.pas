unit View.base.listas;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Service.cadastro,
  Provider.constants;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_Lista: TCardPanel;
    card_cadastro: TCard;
    card_pesquisa: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_ListaCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin //cancelar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoas.Cancel;
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;

end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin //editar
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin//excluir
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;

    case Self.Tag of

      1: begin
        ShowMessage('Cliente Deletado com sucesso.');
      end;

      2: begin
        ShowMessage('Fornecedor Deletado com sucesso.');
      end;

      3: begin
        ShowMessage('Funcionário Deletado com sucesso.');
      end;

    end;

    CardPanel_Lista.ActiveCard := card_pesquisa;
  end
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin//novo
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := Self.Tag;
    ServiceCadastro.QRY_pessoas.Post;

    case Self.Tag of

      1: begin
        ShowMessage('Cliente Salvo com sucesso.');
      end;

      2: begin
        ShowMessage('Fornecedor Salvo com sucesso.');
      end;

      3: begin
        ShowMessage('Funcionário Salvo com sucesso.');
      end;

    end;

    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.CardPanel_ListaCardChange(Sender: TObject; PrevCard, NextCard: TCard);
begin    // change card
  inherited;
  if CardPanel_Lista.ActiveCard = card_cadastro then
    SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin     //show
  inherited;
  CardPanel_Lista.ActiveCard := card_pesquisa;
  GET_Pessoas(Self.Tag);

end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  inherited; //criar a herança
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);

end;

end.

