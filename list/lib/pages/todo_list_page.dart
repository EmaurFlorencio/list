import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Adicione uma tarefa",
                          hintText: "Ex. Estuda Flutter",
                        )),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      String text = todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.all(16),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  for (String todo in todos)
                    ListTile(
                      title: Text(todo),
                      subtitle: Text('dia D'),
                      leading: Icon(Icons.save, size: 30),
                      onTap: () {
                        print('tarefa: $todo');
                      },
                    ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Text("Você possui 0 tarefas pendentes")),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(14),
                    ),
                    child: Text("Limpar tudo"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
