unit eTasks.View.Windows.telas;

interface

uses
  eTasks.View.Windows.tasks,
  eTasks.View.Windows.categories,
  eTasks.View.Windows.Metas,
  eTasks.View.Windows.Listas;

Type
 iWindowsTelas = interface
   ['{41C2DA36-AF0F-4945-9E57-43B5D7B0E9E4}']
   Function Tela_Tasks : TWindows_tasks;
   Function Tela_Categories : TWindows_Categories;
   Function Tela_Objetivos : tWindows_Metas;
   Function Tela_Listas    : twindows_Listas;
 end;


  TWindowsTelas = Class(TInterfacedObject, iWindowsTelas)
    Private
     FTelaTarefas    : tWindows_Tasks;
     FTelaCategories : tWindows_Categories;
     FTelaGoals      : TWindows_Metas;
     FTelaListas     : TWindows_listas;
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New       : iWindowsTelas;
     Function Tela_Tasks      : TWindows_tasks;
     Function Tela_Categories : TWindows_Categories;
     Function Tela_Objetivos  : tWindows_Metas;
     Function Tela_Listas     : twindows_Listas;
  End;

implementation

{ TWindowsTelas }

constructor TWindowsTelas.Create;
begin

end;

destructor TWindowsTelas.Destroy;
begin
  if Assigned(FTelaTarefas) then
   FTelaTarefas.DisposeOf;
  if Assigned(FTelaCategories) then
   FTelaCategories.DisposeOf;
  if Assigned(FTelaGoals) then
   FTelaGoals.DisposeOf;
  if Assigned(FTelaListas) then
   FTelaListas.DisposeOf;
  inherited;
end;

class function TWindowsTelas.New: iWindowsTelas;
begin
  Result := Self.Create;
end;

function TWindowsTelas.Tela_Categories: TWindows_Categories;
begin
  if not Assigned(FTelaCategories) then
   FTelaCategories := TWindows_Categories.Create(nil);
  Result := FTelaCategories;
end;

function TWindowsTelas.Tela_Listas: twindows_Listas;
begin
  if not Assigned(FTelaListas) then
   FTelaListas := TWindows_listas.Create(nil);
  Result := FTelaListas;
end;

function TWindowsTelas.Tela_Objetivos: tWindows_Metas;
begin
  if not Assigned(FTelaGoals) then
   FTelaGoals := TWindows_Metas.Create(nil);
  Result := FTelaGoals;
end;

function TWindowsTelas.Tela_Tasks: TWindows_tasks;
begin
  if not Assigned(FTelaTarefas) then
   FTelaTarefas := TWindows_Tasks.Create(nil);
  Result := FTelaTarefas;
end;

end.
