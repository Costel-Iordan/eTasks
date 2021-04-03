unit eTasks.Controller.Interfaces;

interface

uses
  System.Generics.Collections;

type

  //eTasks - Records to help the classes
  TTarefa = record
    id        : string;
    tarefa    : string;
    descricao : string;
    status    : string;
    data      : string;
    categoria : string;
    Cat_icon  : string;
    Cat_id    : string;
  end;

  TCategoria = record
    cat_id    : string;
    categoria : string;
    cat_icon  : string;
  end;

  //eTasks - Controller Classes
  iControllerLogin = interface
    ['{FA71F17B-8A6F-403D-B16A-2A1209C1FA0F}']
    Function Nome (Value : string)             : iControllerLogin;
    Function Password (Value : string)         : iControllerLogin;
    Function Email (Value : String)            : iControllerLogin;
    Function Foto (value : string)             : iControllerLogin;
    Function CriarConta (out Erro : integer)   : iControllerLogin;
    Function EfetuarLogin (Out Erro : integer) : iControllerLogin;
    Function EfetuarLogout                     : Boolean;
    Function EsqueciConta (out erro : integer) : boolean;
  end;

  iControllerUsuario = interface
    ['{55101E59-30B7-4A9E-8E88-507C4D8B0E24}']
    Function Nome                   : String; overload;
    Function Foto                   : string; overload;
    Function Nome (Value : String)  : iControllerUsuario; overload;
    Function Email                  : string; overload;
    Function Email (Value : String) : iControllerUsuario; overload;
    Function Foto (Value : String)  : iControllerUsuario; overload;
    Function Ler                    : iControllerUsuario;
    function Salvar                 : iControllerUsuario;
    Function Alterar                : iControllerUsuario;
  end;

  iControllerTarefas = interface
    ['{F31D8E0D-49A3-4F5F-8F1A-1669F279F576}']
    function ListarTarefas(out erro: string)  : iControllerTarefas;
    Function NovaTarefa(out erro : string)    : icontrollerTarefas;
    Function EditarTarefa(out erro : string)  : iControllerTarefas;
    Function DeletarTarefa(out erro : string) : iControllerTarefas;
    Function ExibeTarefa(out erro : string)   : iControllerTarefas;
    Function MudaStatus(out Erro : string)    : iControllerTarefas;
    Function id(value : string)               : iControllerTarefas; overload;
    Function id                               : string; overload;
    Function tarefa(value : string)           : iControllerTarefas; overload;
    Function tarefa                           : string; overload;
    Function descricao(value : string)        : iControllerTarefas; overload;
    Function descricao                        : string; overload;
    Function data(value : string)             : iControllerTarefas; overload;
    Function data                             : string; overload;
    function Status(Value : string)           : iControllerTarefas; overload;
    Function status                           : string; overload;
    Function categoria(value : string)        : iControllerTarefas; overload;
    Function categoria                        : string; overload;
    Function Cat_icon(value : string)         : iControllerTarefas; overload;
    Function cat_icon                         : string; overload;
    function cat_id(value : string)           : iControllerTarefas; overload;
    Function cat_id                           : string; overload;
    Function ListagemdeTarefas                : TDictionary<string,TTarefa>;
  end;

  iControllerCategorias = interface
    ['{40A2D1B3-A18C-4D8E-92EB-3A5F051D881B}']
    Function ListarCategorias(out erro: string)  : iControllerCategorias;
    Function CriarCategoria(out erro : string)   : iControllerCategorias;
    Function EditarCategoria(out erro : string)  : iControllerCategorias;
    Function DeletarCategoria(out erro : string) : iControllerCategorias;
    Function ExibeCategoria(out erro : string)   : iControllerCategorias;
    Function Cat_id (Value : string)             : iControllerCategorias; overload;
    Function Cat_id                              : string; overload;
    Function Categoria (Value : string)          : iControllerCategorias; overload;
    Function Categoria                           : string; overload;
    Function Cat_icon (value : string)           : iControllerCategorias; Overload;
    Function Cat_icon                            : string; overload;
    Function ListagemCategorias                  : TDictionary<string,TCategoria>;
  end;

  iControllerFactory = interface
    Function Usuario    : iControllerUsuario;
    Function Login      : iControllerLogin;
    Function Tarefas    : iControllerTarefas;
    Function Categorias : iControllerCategorias;
  end;

implementation

end.
