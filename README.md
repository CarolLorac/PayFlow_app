# payflow_app
A Flutter project to manage bank slip

## Getting Started
Start project in cmd:
flutter create application_name - create app
code application_name - open vscode

## Parts of creation
1. Define Theme (color, images, font)
2. Create Screens

## How to know the size of cellphone
final size = MediaQuery.of(context).size;
- use example:
  Container(
      width: size.width,
      height: size.height * 0.40  - takes up 40% of the screen 
  )

## How add delay (wait especific time):
  await Future.delayed(Duration(seconds: 2));


## How add border in Container
decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.fromBorderSide(BorderSide(color: Colors.grey))
      ),

## News Widgets
InkWell - it's iqual GestureDetector but have a effect when tap
Positioned - put the widget where you want
ex: Positioned(
               top: 35,
               left: 0,
               right: 0,
               child: Image.asset(AppImages.person)
             ),
PreferredSize - add size in appBar
ex: appBar: PreferredSize(
        preferredSize: const Size.fromHeight(128),
        child: ... ),
Text.rich + TextSpan - add diferents fontStyles at text
ex:  Text.rich(
            TextSpan(
              text: "Olá, ",
              style: AppTextStyles.titleListTile,
              children: [
                TextSpan(
                  text: "Caroline",
                  style: AppTextStyles.titleBoldBackground
                )
              ]
            ),
          )
RotatedBox - deixa a tela em vertical - rotaciona 90*
ex: return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold

## ATALHOS
shift + alt + f - indenta o código

## ERROS
 JAVA_HOME is not set and no 'java' command could be found in your PATH - to solve, watch this video https://www.youtube.com/watch?v=Sbic3aMCwhY


## Como configurar o firebase no projeto:
1. Fazer processo de instalação
2. Adicionar no pubspec.yaml o firebase_core
3. Inicializar o firebase - inicialização está na classe AppFirebase (main.dart)
4. Adicionar no pubspec.yaml o google_sign_in
5. Firebase > authentication > sign-in method adicionar o google como provedor de login 
6. Criar classes de loginController (utiliza os métodos do google_sign_in para logar o usuário) e authController (verifica se o usuário já existe, se sim direciona para a tela home e se não, mantem na tela de login)
7. Instanciar LoginController e chamar ela quando clicar no botão

## Como utilizar SharedPreferences:
1. Adicionar pacote shared_preferences no pubspec.yaml
2. Na classe de autenticação AuthController, adicionar métodos saveUser (salva o usuário) e currentUser (verifica se esse usuário já logou no app, se já tiver logado não vai passar na tela de login)
3. Criar UserModel - essa model terá as informações do usuário e os métodos para converter os dados em Map, Json ou String - essas conversões são muito importantes, pois sem elas a AuthController não funciona corretamente
4. Na tela de splash, instanciar a classe e chamar o método currentUser.
obs: as principais classes que fazem tudo acontecer é a UserModel e a AuthController

## Como adicionar rotas nomeadas ao projeto
1. No main, adicionar routes (todas as telas de seu app) e initialRoute (tela inicial)
    return MaterialApp(
      title: "Pay Flow",
      initialRoute: "/home",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      }
    );
2. No momento de navegar entre as telas, você vai  chamá-las da seguinte forma: 
      Navigator.pushNamed(context, "/login");



