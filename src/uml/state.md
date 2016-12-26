## 状態遷移図

```uml
@startuml
[*] --> State1
State1 --> [*]
State1 : 何がしか

State1 -> State2 : ほげほげする
State2 --> [*]
@enduml
```
