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
  Vcl.DBCtrls;

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
  private
    { Private declarations }
  public
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

end.
