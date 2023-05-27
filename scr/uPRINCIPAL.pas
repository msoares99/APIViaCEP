unit uPRINCIPAL;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.Bind.ObjectScope, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, uCEP, FMX.Layouts;

type
  TForm1 = class(TForm)
    edtCEP: TEdit;
    spPESQUISA: TSpeedButton;
    edtRUA: TEdit;
    edtBAIRRO: TEdit;
    edtNUMERO: TEdit;
    edtCIDADE: TEdit;
    edtUF: TEdit;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    procedure spPESQUISAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.spPESQUISAClick(Sender: TObject);
var
  lCEP: TCEP;
  lCEPRecord: TCEPRecord;
begin
  lCEP := TCEP.Create();
  try
    lCEPRecord := lCEP.ConsultarCep(edtCEP.Text);

    edtRUA.Text:= lCEPRecord.Rua;
    edtBAIRRO.Text:= lCEPRecord.Bairro;
    edtNUMERO.Text:= lCEPRecord.Numero;
    edtCIDADE.Text:= lCEPRecord.Cidade;
    edtUF.Text:= lCEPRecord.UF;
  finally
    lCEP.Free;
  end;
end;

end.
