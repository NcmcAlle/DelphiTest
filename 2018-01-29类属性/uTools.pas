unit uTools;

interface               //接口区

uses
  Unit1;

type
  TUser = class
  private
    Fname: string;
    FAge: Integer;
    function GetAge(): Integer;   //定义一个函数
    procedure SetAge(Age: Integer);
  public
    property Name: string read Fname write Fname;    //让别的使用Name属性，但是不让用私有区FName属性
     property Age:Integer read GetAge write SetAge;    //另外一种使用私有属性
  end;

implementation         //实现区

{ TUser }

function TUser.GetAge: Integer;
begin
  Result := Self.FAge;   //定义了函数要有返回值
end;

procedure TUser.SetAge(Age: Integer);
begin
  Self.FAge := Age;
end;

initialization       //初始化区



finalization  //销毁区

end.

