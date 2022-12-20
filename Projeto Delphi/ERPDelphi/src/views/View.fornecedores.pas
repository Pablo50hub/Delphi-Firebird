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
  Vcl.ExtCtrls, Provider.constants;

type
  TViewFornecedores = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
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

procedure TViewFornecedores.FormShow(Sender: TObject);
begin  // show
  inherited;
  GET_Pessoas(2);
end;

end.
