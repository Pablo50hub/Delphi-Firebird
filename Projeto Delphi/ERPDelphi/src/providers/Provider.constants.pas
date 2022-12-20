unit Provider.constants;

interface

procedure GET_Pessoas(iTIPO: integer);

var
  iCOD_FILIAL: Integer;
  sRAZAO_FILIAL: string;

implementation

uses
  Service.cadastro;

 //  procedure para buscar clientes,  funcionarios, fornecedores
procedure GET_Pessoas(iTIPO: integer);
begin
     ServiceCadastro.QRY_pessoas.Close;
     ServiceCadastro.QRY_pessoas.SQL.Clear;
     ServiceCadastro.QRY_pessoas.SQL.Add('select *from pessoas where pes_tipopessoa = :tipopessoa');
     ServiceCadastro.QRY_pessoas.SQL.Add('order by pes_codigo desc');
     ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
     ServiceCadastro.QRY_pessoas.Open();
end;

end.
