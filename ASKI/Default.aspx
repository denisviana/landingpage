<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASKI.Default" %>

<!DOCTYPE html>
<html lang="pt-br">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Aski | Pergunte a quem sabe</title>
    <link rel="shortcut icon" type="image/x-icon" href="img/Aski.ico">

    <meta property="og:type" content="website" />
    <meta property="og:title" content="Aski" />
    <meta property="og:description" content="Plataforma de monitoria online para auxílio 
    com dúvidas acadêmicas de forma ágil e colaborativa." />
    <meta property="og:site_name" content="Aski" />
    <meta property="og:image" content="http://aski.com.br/img/simbolo-logo-verde.png" />

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="estilo.css" rel="stylesheet">

    <script type="text/javascript">
        var appInsights=window.appInsights||function(config){
        function i(config){t[config]=function(){var i=arguments;t.queue.push(function(){t[config].apply(t,i)})}}var t={config:config},u=document,e=window,o="script",s="AuthenticatedUserContext",h="start",c="stop",l="Track",a=l+"Event",v=l+"Page",y=u.createElement(o),r,f;y.src=config.url||"https://az416426.vo.msecnd.net/scripts/a/ai.0.js";u.getElementsByTagName(o)[0].parentNode.appendChild(y);try{t.cookie=u.cookie}catch(p){}for(t.queue=[],t.version="1.0",r=["Event","Exception","Metric","PageView","Trace","Dependency"];r.length;)i("track"+r.pop());return i("set"+s),i("clear"+s),i(h+a),i(c+a),i(h+v),i(c+v),i("flush"),config.disableExceptionTracking||(r="onerror",i("_"+r),f=e[r],e[r]=function(config,i,u,e,o){var s=f&&f(config,i,u,e,o);return s!==!0&&t["_"+r](config,i,u,e,o),s}),t
        }({
            instrumentationKey:"48caee86-5002-4b58-8d56-364e57a359b4"
        });
       
        window.appInsights=appInsights;
        appInsights.trackPageView();
    </script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Header -->
            <div class="navbar-header">
                <!-- botão menu -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#barra-navegacao">
                    <span class="sr-only">Alternar Navegação</span> <!-- apenas para leitores de tela -->
                    <span class="icon-bar" style="color: white;"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- botao -->
                <a href="Default.aspx" class="navbar-brand">
                    <span class="img-logo"></span>
                </a>
            </div>

            <div class="collapse navbar-collapse" id="barra-navegacao">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#oque">O que é?</a></li>
                    <li><a href="#comofunciona">Como funciona?</a></li>
                    <li><a href="#registrar">Registrar-se</a></li>
                </ul>
            </div>

        </div>

    </div>
    <!-- navbar -->

    <!-- Home -->
    <div id="home">
        <div class="container">
            <div class="row vertical-align" style="margin-top: 100px; margin-bottom: 30px;">

                <div class="col-sm-7 texto">
                    <h2>Você é universitário? Estamos chegando para mudar a forma como você estuda!</h2>
                </div>

                <div class="col-sm-5">
                    <img src="img/cel_capa.png" class="img-responsive" id="img-home" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- O que é -->
    <section id="oque">
        <div class="container">
            <div class="row vertical-align">

                <div class="col-sm-4">
                    <img src="img/simbolo-logo-branco.png" style="height: 200px;" alt="">
                </div>

                <div class="col-sm-8 texto2">
                    <h2>O que é o <b>aski?</b></h2>
                    <p>Somos uma plataforma de monitoria online para auxílio com dúvidas acadêmicas de forma ágil e colaborativa.
                        Você está com dificuldades em alguma disciplina? Sem problemas! Encontre alguém que domine essa disciplina
                        e tire suas dúvidas <strong>gratuitamente.</strong></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Como Funciona? -->
    <section id="comofunciona">

        <div class="container sou_universitario">

            <h1 style="margin-bottom: 20px;">Como funciona?</h1>

            <div class="row">
                <!-- Sou universitário -->
                <div class="comofunciona vertical-align">
                    <div class="col-sm-6">
                        <h2>Sou universitário e preciso de auxílio</h2>
                    </div>

                    <div class="col-sm-6">
                        <img src="img/universitario.png" style="height: 140px;">
                    </div>
                </div>

            </div>

            <div class="row universitario" id="universitario">

                <div class="col-md-6">

                    <div class="col-sm-6">
                        <img src="img/inscrever.png" alt="">
                        <p>
                            Registre-se na plataforma e receba, no ato do registro, uma quantidade de pontos.
                        </p>
                    </div>

                    <div class="col-sm-6">
                        <img src="img/localizar.png" alt="">
                        <p>
                            Localize monitores baseado nas disciplinas em que você possui dificuldades.
                        </p>
                    </div>

                </div>

                <div class="col-md-6">

                    <div class="col-sm-6">
                        <img src="img/duvida.png" alt="">
                        <p>
                            Utilize seus pontos e envie suas dúvidas para monitores.
                        </p>
                    </div>

                    <div class="col-sm-6">
                        <img src="img/recebe_resposta.png" alt="">
                        <p>
                            Receba respostas de forma ágil, ganhe mais tempo para estudar e melhore suas notas.
                        </p>
                    </div>
                </div>

            </div>
            <!-- Fim sou universitário -->
        </div>
        <!-- Fim Container -->


        <div style="background: #EEEEEE;">
            <!-- Sou Monitor -->
            <div class="container sou_monitor">

                <div class="row">

                    <div class="comofunciona_monitor vertical-align">

                        <div class="col-sm-6">
                            <img src="img/monitor.png" style="height: 140px;">
                        </div>

                        <div class="col-sm-6">
                            <h2>Tenho conhecimento suficiente e quero auxiliar alguém.</h2>
                        </div>

                    </div>

                </div>

                <div class="row universitario vertical-align" id="universitario">

                    <div class="col-md-6">

                        <img src="img/aula_monitor.png" alt="">
                        <p style="padding: 0 50px;">
                            Você não precisa ser universitário, basta ter conhecimento. Ajude alguém e acumule pontos.
                        </p>

                    </div>

                    <div class="col-md-6" style="padding: 10px 0;">

                        <h2 style="margin-bottom: 30px;">Troque seus pontos por:</h2>

                        <div class="col-sm-4">
                            <img src="img/diploma.png" alt="">
                            <p>
                                Horas complementares na sua faculdade.
                            </p>
                        </div>

                        <div class="col-sm-4">
                            <img src="img/books.png" alt="">
                            <p>
                                Descontos em livrarias parceiras.
                            </p>
                        </div>

                        <div class="col-sm-4">
                            <img src="img/calendar.png" alt="">
                            <p>
                                Descontos em eventos acadêmicos.
                            </p>
                        </div>

                    </div>

                </div>

            </div>
            <!-- Fim Container -->
        </div>
        <!-- Fim Sou Monitor -->

    </section>

    <section>
        <!-- Registre-se -->
        <div class="container" id="registrar">
            <div class="row">

                <div class="col-sm-7">
                    <h1><span style="font-weight: 700;" >SEJA O PRIMEIRO A SABER!</span><br> 
                    OS PRIMEIROS USUÁRIOS RECEBERÃO <span style="color: #038090">BÔNUS</span> DE PONTOS.
                    </h1>
                </div>

                <div class="col-sm-5">

                    <div class="form-group">
                        <label for="nome">Nome</label>
                       
                        <asp:TextBox ID="txtNomVisit" runat="server"  text="visita.Nom_Visi" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server"  
                            ControlToValidate="txtNomVisit" 
                            enableclientscript="False"
                            display="Dynamic"
                            ErrorMessage="O campo Nome é obrigatório" 
                            ForeColor="Red"
                            CssClass="form-control">

                        </asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="sobrenome">Sobrenome</label>
                      
                        <asp:TextBox ID="txtSobNomVi" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"  
                            ControlToValidate="txtSobNomVi" 
                            enableclientscript="False"
                            display="Dynamic"
                            ErrorMessage="O campo Sobrenome é obrigatório" 
                            ForeColor="Red"
                            CssClass="form-control">

                        </asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <asp:TextBox ID="txtEmaVisit" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"  
                            ControlToValidate="txtEmaVisit" 
                            enableclientscript="False"
                            display="Dynamic"
                            ErrorMessage="O campo e-mail é obrigatório" 
                            ForeColor="Red"
                            CssClass="form-control">

                        </asp:RequiredFieldValidator>
                    </div>

                    <div class="checkbox">
                        <asp:Label ID="Label1" runat="server" >
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Quero auxílio de monitores." />
   
                        </asp:Label>
      
                        
                    </div>

                    <div class="checkbox">
                        <asp:Label ID="Label2" runat="server" >

                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Quero auxiliar universitários." />
                        </asp:Label>
                  
                    </div>
                    <asp:Button ID="bnt_Inscricao" runat="server" Text="Quero me registrar!" ToolTip="Confirmar os dados" CssClass="btn btn-lg btn-primary" OnClick="bnt_Inscricao_Click" />
                  
                </div>
                <asp:Label ID="MessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </section>
    <!-- Fim Registre-se -->

    <footer id="rodape">
        <div class="container">
            <div class="row">

                <div class="col-sm-6">
                    <img src="img/google-play.png" alt="">
                </div>     

                <div class="col-sm-6">
                    <img src="img/app-store.png" alt="">
                </div>

            </div>
                 </div>

    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
                        
    <script>
        $(function() {
        $('a[href*=#]').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>
    </form>
</body>

</html>
