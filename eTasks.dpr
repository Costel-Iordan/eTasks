program eTasks;

{
 ########################################################################

       Projeto: eTasks
        Vers�o: 1.0
 Desenvolvedor: Rafael de Figueiredo Alves

 C�pia Autorizada� 2021 - Rafael de Figueiredo Alves / DevPegasus-br

 Descri��o:
 Projeto de App mobile (Android) e desktop (Windows) para gerenciamento de tarefas,
 listas de mercado e metas com foco na produtividade e no bom humor.

 Dedicat�ria:
 "Eu, Rafael de Figueiredo Alves, desenvolvedor deste software, dedico o resultado deste
  trabalho e fruto de tempo de dedica��o e estudo aos grandes amores da minha vida:
  Minha esposa Jailza, meu filho Davi e minha filha Rafaela. A paci�ncia deles comigo e
  o encorajamento que eles me deram e sempre d�o foi o fator crucial para a concretiza��o
  deste projeto. A eles, todo o meu amor e admira��o."

 ########################################################################
 }

{$R *.dres}

uses
  //Required Units
  System.StartUpCopy,
  FMX.Forms,
  //eTasks - Specific View units for Android
  {$IFDEF ANDROID}
  eTasks.libraries.Android in 'Source\Libraries\eTasks.libraries.Android.pas',
  eTasks.View.Android.login in 'Source\View\Android\eTasks.View.Android.login.pas',
  eTasks.View.Android.main in 'Source\View\Android\eTasks.View.Android.main.pas',
  eTasks.View.Android.tasks in 'Source\View\Android\eTasks.View.Android.tasks.pas',
  eTasks.View.Android.Categories in 'Source\View\Android\eTasks.View.Android.Categories.pas',
  eTasks.View.Android.Metas in 'Source\View\Android\eTasks.View.Android.Metas.pas' {Android_metas},
  eTasks.View.Android.listas in 'Source\View\Android\eTasks.View.Android.listas.pas' {android_listas},
  {$ENDIF }
  //eTasks - Specific View units for Windows
  {$IFDEF MSWINDOWS}
  eTasks.View.Windows.login in 'Source\View\Windows\eTasks.View.Windows.login.pas' {Form_Windows_Login},
  eTasks.View.Windows.main in 'Source\View\Windows\eTasks.View.Windows.main.pas'  {Form_Windows_Main},
  eTasks.libraries.Windows in 'Source\Libraries\eTasks.libraries.Windows.pas',
  eTasks.View.Windows.Telas in 'Source\View\Windows\eTasks.View.Windows.Telas.pas',
  eTasks.View.Windows.tasks in 'Source\View\Windows\eTasks.View.Windows.tasks.pas' {Windows_tarefas},
  eTasks.View.Windows.Categories in 'Source\View\Windows\eTasks.View.Windows.Categories.pas' {Windows_categorias},
  eTasks.View.Windows.Metas in 'Source\View\Windows\eTasks.View.Windows.Metas.pas' {Windows_Metas},
  eTasks.View.Windows.Listas in 'Source\View\Windows\eTasks.View.Windows.Listas.pas' {Windows_listas},
  {$ENDIF }
  //eTasks - View dialog units
  eTasks.View.Dialogs.SheetFotos in 'Source\View\Dialogs\eTasks.View.Dialogs.SheetFotos.pas' {Sheet_fotos},
  eTasks.View.Dialogs.Termos in 'Source\View\Dialogs\eTasks.View.Dialogs.Termos.pas' {Dlg_Termos},
  eTasks.View.Dialogs.Messages in 'Source\View\Dialogs\eTasks.View.Dialogs.Messages.pas' {Dlg_Login_messages},
  eTasks.View.Dialogs.Messages.Consts in 'Source\View\Dialogs\eTasks.View.Dialogs.Messages.Consts.pas',
  eTasks.View.Dialogs.Factory in 'Source\View\Dialogs\eTasks.View.Dialogs.Factory.pas',
  eTasks.View.Dialogs.TirarFoto in 'Source\View\Dialogs\eTasks.View.Dialogs.TirarFoto.pas' {Form_Camera},
  eTasks.View.Dialogs.EditarFoto in 'Source\View\Dialogs\eTasks.View.Dialogs.EditarFoto.pas' {Form_Editar_foto},
  eTasks.View.Dialogs.loading in 'Source\View\Dialogs\eTasks.View.Dialogs.loading.pas' {Form_loading},
  eTasks.View.Dialogs.dialogYesNo in 'Source\View\Dialogs\eTasks.View.Dialogs.dialogYesNo.pas' {DialogYesNo},
  eTasks.View.Dialogs.Calendar in 'Source\View\Dialogs\eTasks.View.Dialogs.Calendar.pas' {Dlg_Calendar},
  //eTasks - Model Units
  eTasks.Model.LoggedUser in 'Source\Model\eTasks.Model.LoggedUser.pas',
  eTasks.Model.Interfaces in 'Source\Model\eTasks.Model.Interfaces.pas',
  eTasks.Model.Auth in 'Source\Model\eTasks.Model.Auth.pas',
  eTasks.Model.Consts in 'Source\Model\eTasks.Model.Consts.pas',
  eTasks.Model.Factory in 'Source\Model\eTasks.Model.Factory.pas',
  eTasks.Model.Usuarios in 'Source\Model\eTasks.Model.Usuarios.pas',
  eTasks.Model.Tarefas in 'Source\Model\eTasks.Model.Tarefas.pas',
  eTasks.Model.Categorias in 'Source\Model\eTasks.Model.Categorias.pas',
  eTasks.Model.Metas in 'Source\Model\eTasks.Model.Metas.pas',
  eTasks.Model.Listas in 'Source\Model\eTasks.Model.Listas.pas',
  //eTasks - Controllers
  eTasks.Controller.Interfaces in 'Source\Controller\eTasks.Controller.Interfaces.pas',
  eTasks.Controller.Login in 'Source\Controller\eTasks.Controller.Login.pas',
  eTasks.Controller.Usuario in 'Source\Controller\eTasks.Controller.Usuario.pas',
  eTasks.Controller.Tarefas in 'Source\Controller\eTasks.Controller.Tarefas.pas',
  eTasks.Controller.Factory in 'Source\Controller\eTasks.Controller.Factory.pas',
  eTasks.Controller.Categorias in 'Source\Controller\eTasks.Controller.Categorias.pas',
  eTasks.Controller.Metas in 'Source\Controller\eTasks.Controller.Metas.pas',
  eTasks.Controller.Listas in 'Source\Controller\eTasks.Controller.Listas.pas',
  //eTasks - Commom libraries
  eTasks.libraries.Imagens64 in 'Source\Libraries\eTasks.libraries.Imagens64.pas',
  eTasks.libraries in 'Source\Libraries\eTasks.libraries.pas',
  //eTasks - specific view library to work with "categorias"
  eTasks.view.categorias in 'Source\View\eTasks.view.categorias.pas',
  //eTasks - Custom calendar component made by Rafael de Figueiredo Alves
  eTasks.View.Components.Calendario in 'Source\View\Components\eTasks.View.Components.Calendario.pas'{Calendario: TFrame},
  //Constantes do eTasks
  eTasks.Consts in 'Source\eTasks.Consts.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  {$IFDEF ANDROID}
  teTasksLibrary.LimparUpdate;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  if not TModelLoggedUser.Verificar then
   Application.CreateForm(TForm_Android_Login, Form_Android_Login)
  else
   Application.CreateForm(TForm_Android_main, Form_Android_Main);
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  teTasksLibrary.LimparUpdate;
  if not TModelLoggedUser.Verificar then
   Application.CreateForm(TForm_Windows_Login, Form_Windows_Login)
  else
   Application.CreateForm(TForm_Windows_Main, Form_Windows_Main);
  {$ENDIF}
  Application.Run;
end.
