# 🔧 Alterações de Regras - 08/06/2025

## 📋 Backup: Estrutura de Props em Componentes

**Timestamp:** 2025-06-08  
**Arquivo alterado:** `.zoe/rules/commands/create-component.mdc`

### 📄 Regra ANTERIOR:
- Componentes recebiam props desestruturadas diretamente nos parâmetros
- Exemplo: `const Component: React.FC<TComponent> = ({ prop1, prop2, prop3 }) => {}`

### 📄 Regra NOVA:
- Componentes recebem props como objeto único tipado
- Desestruturação interna com `const { ... } = props`
- Padrão: `const Component: React.FC<TComponent> = (props) => { const { prop1, prop2 } = props }`

### 🎯 Motivo da Alteração:
- Maior consistência na estrutura dos componentes
- Melhor legibilidade do código  
- Padrão mais limpo para props

### 📁 Arquivos Impactados:
- `.zoe/rules/commands/create-component.mdc`

---

## 📋 Backup: Integração de Testes na Criação de Componentes

**Timestamp:** 2025-06-08  
**Arquivos alterados:** 
- `.zoe/rules/commands/create-component.mdc`
- `.zoe/rules/zoe-chore.mdc`

### 📄 Regra ANTERIOR:
- Testes eram criados por action separada (mandatory-tests.mdc)
- Action executada após criação do componente
- Processo em duas etapas

### 📄 Regra NOVA:
- Testes criados automaticamente junto com o componente
- Processo unificado em create-component.mdc
- Action de mandatory-tests removida do dispatcher

### 🎯 Motivo da Alteração:
- Unificar processo de criação de componentes
- Garantir que testes sejam sempre criados
- Simplificar o fluxo de trabalho

---

## 📋 Backup: Localização da Pasta Progress

**Timestamp:** 2025-06-08  
**Arquivo alterado:** `.zoe/rules/actions/auto-documentation.mdc`

### 📄 Regra ANTERIOR:
- Progress salvo em: `@./progress/[YYYY-MM-DD]/README.md` (raiz do projeto)

### 📄 Regra NOVA:
- Progress salvo em: `@./.zoe/rules/progress/[YYYY-MM-DD]/README.md` (dentro das rules)

### 🎯 Motivo da Alteração:
- Manter organização do sistema Zoe
- Todas as pastas do sistema ficam em .zoe/rules/
- Evitar poluir a raiz do projeto

--- 