unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.FBDef,
  FireDAC.Comp.UI,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  System.Inifiles, //inserindo a biblioteca para ler o arquivo .ini
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var  //criando as variaveis para receber os dados do arquivo .ini
  LIniFile : TIniFile;
  LDatabase : string;
  LUser_Name : string;
  LPassword : string;
  LServidor : string;
  LPorta  : integer;
  LCaminho : string;

begin
  try
    //buscando o arquivo .ini para importação de dados
    FDConn.Connected  := False;

    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini';  //buscando do arquivo .ini
    //FDPhysFBDriverLink.VendorHome := ExtractFileDir(ParamStr(0)) + '\dlls';

    LIniFile  := TIniFile.Create(LCaminho);   //cria o caminho do arquivo

    LDatabase := LIniFile.ReadString('Conexao','Database', LDatabase);   //le os dados dentro do arquivo
    LServidor := LIniFile.ReadString('Conexao','Servidor', LServidor);   //le os dados dentro do arquivo
    LPorta    := LIniFile.ReadInteger('Conexao','Porta', LPorta);        //le os dados dentro do arquivo

    LUser_Name := 'SYSDBA';     //insere o usuario manual
    LPassword  := 'masterkey';  //insere a senha manual

    FDConn.Params.Values['Database']  := LDatabase;    //passa os dados lidos
    FDConn.Params.Values['User_Name']  := LUser_Name;  //passa os dados lidos
    FDConn.Params.Values['Password']  := LPassword;    //passa os dados lidos
    FDConn.Params.Values['Server']  := LServidor;      //passa os dados lidos
    FDConn.Params.Values['Porta']  := LPorta.ToString; //passa os dados lidos

    //FDConn.Connected := True;

  finally
       FreeAndNil(LIniFile);      //para limpara a memoria do computador
  end;

  //carrego minha filial
  QRY_Filial.Close;
  qry_filial.Params[0].AsInteger := 1;
  qry_filial.Open();


  iCOD_FILIAL   := QRY_filialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;

end;

end.
