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
  Service.cadastro, Vcl.Mask, Vcl.DBCtrls;

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
  private
    { Private declarations }
  public
      procedure GET_Pessoas(iTIPO: integer);
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin  //editar
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin  //novo
  inherited;
  CardPanel_Lista.ActiveCard := card_cadastro;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin   //salvar
  inherited;
  ServiceCadastro.QRY_pessoas.Edit;
  ServiceCadastro.QRY_pessoas.Post;
  CardPanel_Lista.ActiveCard := card_pesquisa;
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin  //show
  inherited;
  GET_Pessoas(1);
end;

procedure TViewClientes.GET_Pessoas(iTIPO: integer);
begin
     ServiceCadastro.QRY_pessoas.Close;
     ServiceCadastro.QRY_pessoas.SQL.Clear;
     ServiceCadastro.QRY_pessoas.SQL.Add('select *from pessoas where pes_tipopessoa = :tipopessoa');
     ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
     ServiceCadastro.QRY_pessoas.Open();
end;

end.
