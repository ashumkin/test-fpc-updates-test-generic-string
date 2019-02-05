program test_generic_string;
// vim: set filetype=pascal expandtab:

{$MODE DELPHIUNICODE}

type
  TTestGenericEnumerator = class(TInterfacedObject, IEnumerator<string>)
  private
    function GetCurrentString: string;
    function GetCurrent: TObject;
    function IEnumerator<string>.GetCurrent = GetCurrentString;
    function MoveNext: Boolean;
    procedure Reset;
  end;

function TTestGenericEnumerator.GetCurrentString: string;
begin
  Result := '';
end;

function TTestGenericEnumerator.GetCurrent: TObject;
begin
  Result := nil;
end;

function TTestGenericEnumerator.MoveNext: Boolean;
begin
  Result := False;
end;

procedure TTestGenericEnumerator.Reset;
begin
end;

begin
end.
