program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uTools in 'uTools.pas',
  Unit1 in 'Unit1.pas';

var
  User: TUser;

begin
  User := TUser.Create;

  User.Name := '张三';
  User.Age := 20;
  //Writeln(User.FName);    //因为Fname是私有权限 所以，输出的时候 会报  Undeclared identifier: 'FName'
      {*------------------------------------------------------------------------------
          如果要真使用FName的话，就必须的用个关键字 propert 声明的字段、属性
      -------------------------------------------------------------------------------}
  Writeln(User.Name);

  Writeln(User.Age);       //因为FAge是公众的权限，所以可以
  Readln;
end.

