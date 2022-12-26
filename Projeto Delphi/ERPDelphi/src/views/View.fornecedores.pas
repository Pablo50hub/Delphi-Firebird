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
  Vcl.Mask,
  Vcl.DBCtrls;

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

end.
