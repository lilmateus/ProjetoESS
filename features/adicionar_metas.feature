 Scenario: inserir 2 novas metas onde uma delas já existe
 Given que eu estou na página “Inserir Metas”
 And eu vejo a meta “Entender conceitos de requisitos”, e nenhuma outra associada à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Especificar requisitos com qualidade” e   “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração”, e nenhuma outra associada à disciplina “Engenharia de Software”.

 Scenario: inserir 2 novas metas
 Given que eu estou na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade” e apenas essas associadas à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Especificar requisitos com qualidade” e   “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo um alerta indicando que a meta “Especificar requisitos com qualidade” já foi inserida
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração”, e nenhuma outra associada à disciplina “Engenharia de Software”.

