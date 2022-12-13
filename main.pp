program HelloWorld(output);
uses
 Classes, SysUtils;
var
  f: Text;

procedure copy(f1, f2: String);
var
  input, output: Text;
  line: String;
begin
  Assign(input, 'test.txt');
  Assign(output, 'test2.txt');
  Reset(input);
  Rewrite(output);

  while not eof(input) do
  begin
    readln(input, line);
    writeln(output, line);
  end;

  Close(input);
  Close(output);
end;

begin
  writeln('Hello, World!');

  Assign(f,'test.txt');
  Rewrite(f);
  WriteLn(f, 'This is a test');
  Close(f);

  copy('test.txt', 'test2.txt');

end.