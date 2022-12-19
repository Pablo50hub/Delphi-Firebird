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
  Service.cadastro;

type
  TViewClientes = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
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
