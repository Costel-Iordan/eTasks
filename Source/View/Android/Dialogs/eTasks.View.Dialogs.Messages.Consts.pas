unit eTasks.View.Dialogs.Messages.Consts;

interface

Type

 tTipoMensagem = (tpmErro_senha, tpmErro_email, tpmErro_brancologin, tpmErro_senha_cad, tpmErro_email_cad, tpm_branco_cad, tpmEnvioEmail, tpmSucessoConta);

 ResourceString

  ErroSenhaLogin  = 'A senha informada � inv�lida. Por favor tente novamente.';
  ErroEmailLogin  = 'Email informado n�o � usu�rio v�lido. Por favor tente novamente.';
  ErroBrancoLogin = 'Para efetuar login � necess�rio informar e-mail e senha v�lidos. Por favor tente novamente.';
  ErroSenhaCad    = 'Senha precisa ter pelo menos 6 caracteres. Por favor tente novamente.';
  ErroEmailCad    = 'Email informado j� possui conta. Tente fazer login ou informe um outro email.';
  ErroBrancoCad   = 'Para criar uma conta � necess�rio informar email, senha e nome. Por favor tente novamente.';
  EnvioEmail      = 'Pronto! Agora basta aguardar a chegada do e-mail e seguir as orienta��es.';
  SucessoConta    = 'Parab�ns! Voc� criou sua conta com sucesso. Comece a usar o eTasks.';

implementation

end.
