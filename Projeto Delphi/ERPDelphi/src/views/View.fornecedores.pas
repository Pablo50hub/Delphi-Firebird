unit View.fornecedores;

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
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Provider.constants, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    pnlTituloCadCliente: TPanel;
    lblTituloCadastrato: TLabel;
    etPES_CODIGO: TDBEdit;
    edtPES_RAZAO: TDBEdit;
    edtPES_FANTASIA: TDBEdit;
    edtPES_TELEFONE: TDBEdit;
    edtPES_CNPJCPF: TDBEdit;
    edtPES_IERG: TDBEdit;
    edtPES_OBSERVACAO: TDBEdit;
    procedure FormShow(Sender: TObject);
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
  ViewFornecedores: TViewFornecedores;

implementation

uses
  Service.cadastro;

{$R *.dfm}

procedure TViewFornecedores.btnCancelarClick(Sender: TObject);
begin //cancelar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoas.Cancel;
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;

end;

procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin //editar
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  edtPES_CNPJCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewFornecedores.btnExcluirClick(Sender: TObject);
begin //excluir
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;
    ShowMessage('Fornecedor deletado com sucesso.');
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end
end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin //novo
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  edtPES_CNPJCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewFornecedores.btnSalvarClick(Sender: TObject);
begin  //salvar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 2;
    ServiceCadastro.QRY_pessoas.Post;
    ShowMessage('Fornecedor Salvo com sucesso.');
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewFornecedores.FormShow(Sender: TObject);
begin  // show
  inherited;
  GET_Pessoas(2);
end;

end.
