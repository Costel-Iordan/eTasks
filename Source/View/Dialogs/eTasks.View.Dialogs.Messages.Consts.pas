unit eTasks.View.Dialogs.Messages.Consts;

interface

Type

 tTipoMensagem = (tpmErro_login_Senha, tpmErro_login_Email, tpmBranco_login_email, tpmBranco_login_senha, tpmInvalido_login_email, tpmInvalido_login_senha, tpmUsuario_desativado_login,
                  tpmErro_resetar_email, tpmInvalido_resetar_email, tpmBranco_resetar_email, tpmSucesso_resetar,
                  tpmPermissao_solicitar_camera, tpmPermissao_negada_camera, tpmPermissao_solicitar_galeria, tpmPermissao_negada_galeria,
                  tpmErro_criar_conta, tpmBranco_criar_nome, tpmBranco_criar_email, tpmBranco_criar_senha, tpmInvalido_criar_email, tpmInvalido_criar_senha, tpmSucesso_criar_conta,
                  tpmCategoria_Editada, tpmCategoria_Inserida, tpmCategoria_Apagada,
                  tpmTasks_Editada, tpmTasks_Inserida, tpmTasks_Apagada,
                  tpmGoals_Editada, tpmGoals_Inserida, tpmGoals_Apagada,
                  tpmLists_Editada, tpmLists_Inserida, tpmLists_Apagada,
                  tpmNo_Updates);

 ResourceString

  //Mensagens referente a login
  Erro_Senha_Login     = 'A senha informada est� incorreta. Por favor tente novamente.';
  Erro_Email_Login     = 'Usu�rio n�o est� cadastrado. Tente criar uma nova conta ou verifique o email e senha.';
  Branco_Email_Login   = 'Para efetuar login � necess�rio informar e-mail. Por favor tente novamente.';
  Branco_Senha_Login   = 'Para efetuar login � necess�rio informar senha. Por favor tente novamente.';
  Invalido_email_login = 'O email fornecido n�o � v�lido. Verifique se digitou corretamente e tente novamente.';
  Invalido_senha_login = 'A senha informada parece n�o ser v�lida por conter menos de 6 caracteres. Verifique e tente novamente.';
  Usuario_desativado   = 'Sentimos em informar que o usu�rio informado foi desativado do sistema. Contate nosso suporte para mais informa��es.';

  //Mensagens referentes a solicita��o de Permiss�es
  Permissao_solicitar_camera  = 'Para tirar uma foto para o perfil de usu�rio, o eTasks precisa da sua permiss�o para habilitar a c�mera.';
  Permissao_solicitar_galeria = 'Para que voc� possa selecionar uma foto da sua galeria, o eTasks precisa de sua permiss�o.';
  Permissao_negada_camera     = 'N�o foi poss�vel tirar uma foto para o perfil por falta de permiss�o de uso da c�mera. Tente novamente!';
  Permissao_negada_galeria    = 'N�o foi poss�vel selecionar uma foto de perfil da sua galeria por falta de permiss�o. Tente novamente!';

  //Mensagens referentes a cria��o de conta
  Invalido_senha_criar_conta  = 'Senha precisa ter pelo menos 6 caracteres. Por favor tente novamente.';
  Invalido_email_criar_conta  = 'Email informado n�o parece v�lido. Por favor verifique e tente novamente.';
  Branco_nome_criar_conta     = 'Voc� parece ter esquecido de informar o nome de usu�rio para sua nova conta. Informe e tente novamente.';
  Branco_email_criar_conta    = 'Voc� parece ter esquecido de informar o email para sua nova conta. Informe e tente novamente.';
  Branco_senha_criar_conta    = 'Voc� parece ter esquecido de informar a senha para sua nova conta. Informe e tente novamente.';
  Erro_criar_conta            = 'Conta de usu�rio j� existe. Tente fazer login ou tente criar conta com outro email.';
  Sucesso_criar_conta         = 'Parab�ns! Sua conta foi criada com sucesso. Clique em COME�AR para usufruir do eTasks.';

  //Mensagens referentes a resetamento da senha
  Invalido_email_resetar = 'O email informado n�o parece ser v�lido. Por favor verifique e tente novamente.';
  Branco_email_resetar   = 'Para poder resetar a senha, � necess�rio informar um email v�lido. Por favor informe e tente novamente.';
  Erro_resetar_senha     = 'N�o encontramos nenhuma conta com este email. Verifique o email informado e tente novamente, ou crie uma nova conta.';
  Sucesso_resetar_senha  = 'Parab�ns, seu pedido de resetamento de senha foi enviado e em instantes voc� receber� um email com instru��es para definir uma nova senha. Aguarde!';

  //Mensagens referentes a Categorias
  Categoria_Editada  = 'Categoria editada com sucesso!';
  Categoria_Inserida = 'Categoria criada com sucesso!';
  Categoria_Apagada  = 'Categoria foi apagada com sucesso!';

  //Mensagens referentes a Tarefas
  Tasks_Editada  = 'Tarefa editada com sucesso!';
  Tasks_Inserida = 'Tarefa criada com sucesso!';
  Tasks_Apagada  = 'Tarefa foi apagada com sucesso!';

  //Mensagens referentes a Metas
  Goals_Editada  = 'Meta foi editada com sucesso!';
  Goals_Inserida = 'Meta foi criada com sucesso!';
  Goals_Apagada  = 'Meta foi apagada com sucesso!';

  //Mensagens referentes a Listas
  Lists_Editada  = 'Item da lista foi editado com sucesso!';
  Lists_Inserida = 'Item foi adicionado a lista de compras com sucesso!';
  Lists_Apagada  = 'Item foi removido da lista de compras com sucesso!';

  //Mensagem de nenhuma atualiza��o dispon�vel
  No_updates = 'Voc� j� est� utilizando a vers�o mais atualizada do eTasks. Parab�ns!!!';

implementation

end.
