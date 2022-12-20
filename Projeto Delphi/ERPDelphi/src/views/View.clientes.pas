unit View.clientes;

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
  Service.cadastro,
  Vcl.Mask,
  Vcl.DBCtrls,
  Provider.constants;

type
  TViewClientes = class(TViewBaseListas)
    pnlTituloCadCliente: TPanel;
    lblTituloCadastrato: TLabel;
    lbl1: TLabel;
    edtPES_CODIGO: TDBEdit;
    lbl2: TLabel;
    edtPES_RAZAO: TDBEdit;
    lbl3: TLabel;
    edtPES_FANTASIA: TDBEdit;
    lbl4: TLabel;
    edtPES_TELEFONE: TDBEdit;
    lbl5: TLabel;
    edtPES_CNPJCPF: TDBEdit;
    lbl6: TLabel;
    edtPES_IERG: TDBEdit;
    lbl7: TLabel;
    edtPES_OBSERVACAO: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin   //cancelar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoas.Cancel;
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin  //editar
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  edtPES_CNPJCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin   //excluir
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;
    ShowMessage('Cliente deletado com sucesso.');
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin  //novo
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
  edtPES_CNPJCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin   //salvar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 1;
    ServiceCadastro.QRY_pessoas.Post;
    ShowMessage('Cliente Salvo com sucesso.');
    CardPanel_Lista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin  //show
  inherited;
  GET_Pessoas(1);
end;
end.
