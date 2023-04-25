# Study annotation while developing.

> This .md file is used to backtrack **notes/flashcards/english wzords**.

## 🔍🤔 What i learned from this project?

### - A

```
<code>
```

### - State Management (Dev > Data&Backend > State Mgmt)

O estado é qualquer informação que pode mudar durante a execução do aplicativo, como dados de entrada do usuário, dados baixados da Internet ou valores de configuração. Em Flutter, _Widgets are everything_ e saber gerenciar os estados do widgets é essencial no processo de codificação.

> Flutter is declarative. This means that Flutter builds its user interface to reflect the current state of your app

### - Ephemeral State vs App State

De um modo geral, estados efêmeros (Ephemeral) são formas de gerenciar estados que podem ser resetadas após os _restarts_ da aplicação (por meio de _setStates{}_ e  _State Class_, como uma variável __index_ em um _HomePage Widget_). Por todavia, faz-se necessário a permanência de Estados além da efemeridade para o UI

### - Provider

Provider é um gerenciador de estados simples, há diversos gerenciadores de estados para aplicações Flutter, tais quais BlOc, Cubit, Provider, Redux, etc. Provider é o mais simples e consiste em três métodos com _Callbacks_ já implementadas no pacote, divindindo-se em três principais _Widgets_:

- **ChangeNotifier:** Provém notificação de mudança para seus observadores (_listerners_), para isso todos nós filhos quando mudarem de estado devem possuir o método notifyListerners() para avisar aos nós pais que alguma mudança foi realizada. A seguir um exemplo de um contador em um arquvio CounterModel.dart:

```
class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
```

- **ChangeNotifierProvider:** Instância a Classe ChangeNotifier na árvore de Providers da aplicação. Em aplicações simples geralmente está presente logo após a main(), como no TodoApp que realizou, a classe TodoProvider é instanciada por ChangeNotifierProvider:

```
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => TodoProvider()),
      child: MaterialApp(
        title: 'Simple ToDo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
```

- **Consumer:** Instância a Cla

## 📚 Content flashcards questions checklist:

- [ ] State Management definition.
- [ ] Which is the diff between Imperative programming UI style and Declarative UI programming
  style?
- [ ] What is the difference between Ephemeral Management State and App State?
- [ ] Q4
- [ ] Q5

```
<code>
```

## 📝 English flashcards checklist:

- [ ] therefore
- [ ] broadest
- [ ] neatly
- [ ] W4
- [ ] W5

```
<code>
```