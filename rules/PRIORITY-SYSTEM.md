# 🎯 Sistema de Prioridades - Zoe

## 📋 Visão Geral

O sistema de prioridades controla a execução de comandos e actions do Zoe, evitando conflitos, redundância e loops. Quando múltiplos triggers são detectados simultaneamente, apenas o de maior prioridade (menor level) é executado.

## 🗂️ Arquivos do Sistema

- **`priority-map.json`** - Mapa central de prioridades
- **`zoe-chore.mdc`** - Dispatcher modificado para consultar prioridades
- **`PRIORITY-SYSTEM.md`** - Esta documentação

## 🎲 Como Funciona

### 1. Consulta Automática
Toda vez que o Zoe detecta um trigger, ele:
1. Lê o `priority-map.json`
2. Identifica todos os triggers possíveis
3. Executa apenas o de menor level (maior prioridade)
4. Registra a decisão no log

### 2. Estrutura de Levels
- **Level 1-10**: Segurança e sistema (blocking)
- **Level 11-40**: Comandos de desenvolvimento
- **Level 50-60**: Documentação (post-execution)
- **Level 90-100**: Formatação (always execute)

### 3. Categorias Especiais
- **blocking**: Bloqueia outras execuções até completar
- **post_execution**: Executa apenas após comando principal
- **always_execute**: Executa sempre ao final
- **mandatory**: Não pode ser pulado

## 🔧 Como Editar Prioridades

### Alterar Level de um Comando/Action
```json
{
  "type": "command",
  "name": "create-component",
  "level": 8,  // ← Altere este número
  "category": "development"
}
```

### Adicionar Novo Comando
```json
{
  "type": "command",
  "name": "novo-comando",
  "file": "commands/novo-comando.mdc",
  "trigger": "comando novo",
  "description": "Descrição do comando",
  "level": 15,
  "category": "development"
}
```

### Remover Comando
Simplesmente delete o objeto completo do array `priority`.

## 📊 Categorias Disponíveis

| Categoria | Range Levels | Características |
|-----------|--------------|------------------|
| `security` | 1-10 | Blocking, obrigatório |
| `system` | 1-20 | Blocking, configuração |
| `initialization` | 1-20 | Comandos de início |
| `learning` | 1-30 | Feedback e aprendizado |
| `maintenance` | 1-30 | Correções e melhorias |
| `development` | 1-40 | Criação de código |
| `organization` | 1-40 | Organização e progresso |
| `documentation` | 50-60 | Post-execution |
| `formatting` | 90-100 | Post-execution |

## 🎯 Exemplos Práticos

### Exemplo 1: Múltiplos Comandos
```
Usuário: "alterar regra e criar componente"

Triggers detectados:
- alterar regra (level 2)
- criar componente (level 8)

Execução: "alterar regra" (menor level = maior prioridade)

Log: 
🎯 PRIORITY LOG: 
- Triggers detectados: [alterar regra, criar componente]
- Executado: change-rule (level 2) - Maior prioridade
- Conflitos evitados: [create-component (level 8)]
```

### Exemplo 2: Security Blocking
```
Situação: Tentativa de alterar regra sem comando específico

Triggers detectados:
- rule-change-guard (level 1 - SECURITY)
- moderate-formatting (level 99 - ALWAYS)

Execução: 
1. rule-change-guard (bloqueia execução)
2. moderate-formatting (após desbloqueio)
```

### Exemplo 3: Post-Execution
```
Comando principal executado: create-component

Post-execution automática:
1. auto-documentation (level 50)
2. update-docs (level 51) - se alterou regras
3. moderate-formatting (level 99) - sempre
```

## 🚨 Regras Críticas

### NUNCA ALTERAR:
- **rule-change-guard** deve permanecer level 1
- **moderate-formatting** deve permanecer level 99
- **change-rule** deve permanecer level 2

### SEMPRE LEMBRAR:
- Menor level = maior prioridade
- Categorias "blocking" interrompem outras execuções
- Actions "post_execution" só executam após comando principal
- Actions "always_execute" executam independente de conflitos

## 🔍 Log de Decisões

Todo trigger executado deve gerar log:
```
🎯 PRIORITY LOG: 
- Triggers detectados: [listar todos identificados]
- Executado: [nome do comando/action] (level [número]) - [motivo da escolha]
- Conflitos evitados: [listar outros triggers ignorados]
```

## 🛠️ Manutenção Avançada

### Adicionar Nova Categoria
1. Edite `categories` no `priority-map.json`
2. Defina `priority_range` apropriado
3. Configure características especiais se necessário

### Debugar Conflitos
1. Verifique o log de prioridades
2. Confirme levels no `priority-map.json`
3. Verifique se categorias estão corretas

### Edge Cases Suportados
- **Levels iguais**: Executa na ordem do array
- **Categoria inexistente**: Usa level padrão
- **Arquivo não encontrado**: Log de erro + fallback
- **Multiple always_execute**: Executam na ordem de level

## 📈 Melhorias Futuras

### Possíveis Implementações:
- Sistema de dependências entre comandos
- Prioridades dinâmicas baseadas em contexto
- Cache de prioridades para performance
- Interface visual para edição de prioridades

### Como Implementar:
1. Sempre edite o `priority-map.json` primeiro
2. Teste com comandos simples
3. Verifique logs de decisão
4. Documente mudanças neste arquivo

---

**Última atualização:** 08/06/2025  
**Versão do sistema:** 1.0  
**Criado por:** Math + Zoe 