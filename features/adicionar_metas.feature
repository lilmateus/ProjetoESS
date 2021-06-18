 Scenario: inserir 2 novas metas onde uma delas já existe
 Given que eu estou na página “Inserir Metas”
 And eu vejo a meta “Entender conceitos de requisitos”, e nenhuma outra associada à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Especificar requisitos com qualidade” e   “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração”, e nenhuma outra associada à disciplina “Engenharia de Software”.

 Scenario: inserir 2 novas metas
 Given que eu estou na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade” e só essas associadas à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Especificar requisitos com qualidade” e   “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo um alerta indicando que a meta “Especificar requisitos com qualidade” já foi inserida
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração”, e nenhuma outra associada à disciplina “Engenharia de Software”.

 Scenario: inserir 2 metas iguais
 Given que eu estou na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade” e só essas associadas à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Entender conceitos de gerência de configuração” e “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo um alerta indicando que eu estou tentando inserir duas metas iguais
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, e nenhuma outra associada à disciplina “Engenharia de Software”.
 
 Scenario: inserir 3 metas, sendo 2 iguais
 Given que eu estou na página “Inserir Metas”
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade” e só essas associadas à disciplina “Engenharia de Software”.
 When eu tento inserir as metas “Entender conceitos de gerência de configuração”, "Saber implementar testes" e “Entender conceitos de gerência de configuração”
 Then eu continuo na página “Inserir Metas”
 And eu vejo um alerta indicando que eu estou tentando inserir duas metas iguais
 And eu vejo as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, e nenhuma outra associada à disciplina “Engenharia de Software”.
