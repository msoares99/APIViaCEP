program APICEP;
uses
  System.StartUpCopy,
  FMX.Forms,
  uPRINCIPAL in 'scr\uPRINCIPAL.pas' {Form1},
  uCEP in 'scr\uCEP.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
