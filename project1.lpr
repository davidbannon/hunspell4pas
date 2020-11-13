program project1;

{$mode objfpc}{$H+}


{ This is a trivial FPC application built to test newly derived ObjectPascal bindings
  to the Hunspell library. It has some dependencies on a Lazarus install.
  Because of its command line nature, and assumed paths, its only usable on Linux.
  The bindings them selves, hunspell.inc and hunspell.pas have no such limitation.
}

{	Copyright (C) 2020 David Bannon.

    License:
    This code is licensed under BSD 3-Clause Clear License, see file License.txt
    or https://spdx.org/licenses/BSD-3-Clause-Clear.html  }


uses
        {$IFDEF UNIX}
        cthreads,
        {$ENDIF}
        Classes,
        sysutils,
        hunspell;

procedure TestHunspell();
var
  Spell : THunspell;
  Sts : TStringList;
  I : integer;
begin
  Spell := THunspell.Create(True);
  if Spell.ErrorMessage = '' then begin
    if Spell.SetDictionary('/usr/share/hunspell/en_US.dic') then begin
          writeln('speller ' + booltostr(Spell.Spell('speller'), True));
          writeln('badspeller ' + booltostr(Spell.Spell('badspeller'), True));
          Sts := TStringList.Create();
          Spell.Suggest('badspeller', Sts);
          for i := 0 to Sts.Count -1 do
              writeln('    ' + Sts.Strings[I]);
          Sts.Free;
    end else
      writeln('ERROR - Dictionary not loaded.');
  end else writeln('ERROR - Library not loaded.');
  Spell.Free;
end;

begin
    TestHunspell();
end.

