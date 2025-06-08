# 🤖 Como a Zoe Funciona - Guia Completo

## 🎯 Visão Geral

A **Zoe** é um sistema automatizado para desenvolvimento React/Next.js que:
- **Executa diretamente** sem explicações
- **Detecta automaticamente** Tailwind vs Styled-components
- **Documenta tudo** automaticamente
- **Cria estruturas completas** de componentes e páginas
- **Gera testes obrigatórios** com vitest + userEvent
- **Usa formatação limpa** com emojis apenas em títulos

---

## 🚀 Sistema de Retomada de Trabalho

**Arquivo:** `commands/resume-progress.mdc`

**Comando:** `retomar progresso anterior`

**Fluxo:**
1. Lê commands/resume-progress.mdc completamente
2. Interpreta todas as instruções e contexto  
3. Atualiza zoe-chore.mdc se especificado
4. Marca progresso como "Em Progresso"
5. Cria plano detalhado em progress/[data]/README.md
6. Executa primeira tarefa automaticamente

---

## ✅ **CHECKLIST OBRIGATÓRIO**
**SEMPRE verificar ao final de cada resposta:**
- ✅ Editei/criei arquivos? → Auto-documentation
- ✅ Alterei regras/commands/actions? → Update-docs  
- ✅ Usuário deu feedback negativo? → Feedback-capture
- ✅ Criei componente/página? → Mandatory-tests
- ✅ Aplicar formatação moderada → Sempre

---

## ⚡ Comandos de Criação

### **1. Alterar Regra**
```bash
alterar regra
```

**Fluxo obrigatório ANTES de qualquer alteração:**
1. Executa commands/change-rule.mdc completamente
2. Identifica arquivos que serão alterados
3. Verifica dependências e impactos
4. Cria backup da versão atual
5. Executa alteração de forma controlada
6. Aplica formatação moderada automaticamente
7. Valida funcionamento pós-alteração
8. Atualiza documentação automaticamente

**Proteção:** Action rule-change-guard.mdc bloqueia alterações diretas

### **2. Aprender com os Erros**
```bash
aprender com os erros
```

**Fluxo:**
1. Lê commands/auto-learning.mdc completamente
2. Identifica correções pendentes (⏳)
3. Aplica todas as correções em sequência
4. Marca correções como concluídas (✅)
5. Documenta aplicação em progress/[data]/README.md

### **3. Criar Componente**
```bash
criar componente [nome-do-componente]
```

**Estrutura criada:**
```
components/[nome-do-componente]/
├── [nome].component.tsx    # 🧠 Toda a lógica (useState, useEffect, handlers)
├── [nome].template.tsx     # 🎨 Toda a estrutura visual
├── [nome].classes.ts       # 🎯 Classes Tailwind organizadas (se Tailwind)
├── [nome].types.ts         # 📝 Interfaces TypeScript
├── [nome].composite.tsx    # 🔧 Subcomponentes reutilizáveis (opcional)
└── [nome].test.tsx         # 🧪 Testes com vitest + userEvent (OBRIGATÓRIO)
```

### **4. Criar Página**
```bash
criar página [nome-da-pagina]
```

**Estrutura criada:**
```
pages/[nome-da-pagina]/
├── [nome].page.tsx         # 📄 Página principal + Head component
├── [nome].template.tsx     # 🎨 Estrutura visual
├── [nome].classes.ts       # 🎯 Classes Tailwind (se aplicável)
├── [nome].types.ts         # 📝 Props interfaces
├── [nome].composite.tsx    # 🔧 Componentes da página (opcional)
└── [nome].test.tsx         # 🧪 Testes com vitest + userEvent (OBRIGATÓRIO)
```

### **5. Fix Bugs**
```bash
fix bugs
```

**Correções aplicadas automaticamente:**
- Missing keys em listas
- Memory leaks (cleanup em useEffect)
- State stale closure fixes  
- Hydration mismatch fixes
- Dependency arrays corretas

### **6. Otimizar Performance**
```bash
otimizar performance
```

**Otimizações aplicadas:**
- React.memo onde necessário
- Lazy loading de componentes
- Otimização de classes Tailwind
- Verificação de re-renders

---

## 🧪 Regra #4: Testes Obrigatórios

### **SEMPRE que criar componente/página:**
1. **Gerar arquivo `.test.tsx`** usando `templates/react-component-test.mdc`
2. **userEvent OBRIGATÓRIO** → `const user = userEvent.setup()`
3. **Nunca fireEvent** → Sempre userEvent para interações realistas
4. **Estrutura de teste obrigatória:**
   - **Renderização** → Verificar se componente renderiza
   - **Interações com userEvent** → Cliques, digitação, formulários
   - **Estados** → Loading, erro, sucesso
   - **Acessibilidade** → ARIA labels, navegação por teclado

### **Ferramentas de Teste:**
- **Vitest** → Test runner (mais rápido que Jest)
- **@testing-library/react** → Renderização de componentes
- **@testing-library/user-event** → Interações realistas (SEMPRE usar)
- **@testing-library/jest-dom** → Matchers específicos para DOM

### **Padrões userEvent (OBRIGATÓRIOS):**
- Setup obrigatório: `const user = userEvent.setup()`
- Cliques: `await user.click(element)`
- Digitação: `await user.type(input, 'texto')`
- Navegação: `await user.tab()` e `await user.keyboard('{Enter}')`
- Formulários: preencher + submeter
- **NUNCA usar fireEvent**

### **Estrutura de Teste Obrigatória:**
- **Renderização** → Verificar se componente renderiza corretamente
- **Interações com userEvent** → Cliques, digitação, formulários (SEMPRE com userEvent.setup())
- **Estados** → Loading, erro, sucesso
- **Acessibilidade** → ARIA labels, navegação por teclado

---

## 🏁 Regra #1: Execução Direta

### **Comportamento:**
- **Recebeu código** = ajuste direto aplicando boas práticas
- **Não explica** = só executa
- **Sem código** = pede: "Envie o código"
- **SEMPRE cria teste** com vitest + userEvent

### **ANTES de qualquer ajuste:**
1. **Ler contexto:** `context/stack-tech.mdc`
2. **Detectar estilo:** `commands/detect-style.mdc`
3. **Escolher abordagem:** Tailwind ou Styled-components
4. **Aplicar padrões:** React/Next/TypeScript
5. **Gerar teste:** templates/react-component-test.mdc

---

## 📚 Regra #2: Documentação Automática

### **Arquivo único por dia:** `progress/[YYYY-MM-DD]/README.md`

### **Auto-Documentação:**
- Cada ajuste adiciona entrada em: `progress/[YYYY-MM-DD]/README.md`
- Um arquivo README por dia
- Resumo diário simples no topo
- Cada ajuste como seção separada (sem horários)

### **Estrutura do arquivo diário:**
```markdown
# Progresso - [DD/MM/YYYY]

## 📊 Resumo
- **Total de ajustes:** X
- **Principais melhorias:** [lista]
- **Stack:** React/Next + TypeScript + [Tailwind/Styled-components] + Vitest

---

## [Tipo de Ajuste]

**Solicitação:** [O que foi pedido]

**Antes:**
```[linguagem]
[código original]
```

**Depois:**
```[linguagem]
[código ajustado]
```

**Testes:**
```tsx
[código do teste gerado]
```

**Melhorias:**
- [lista das melhorias aplicadas]
- ✅ Teste criado com userEvent

---

## [Próximo Ajuste]
[Repetir estrutura para cada ajuste do dia]

---
```

### **Benefícios:**
- **Simplicidade:** README limpo sem horários
- **Organização:** Um arquivo por dia
- **Fácil navegação:** Estrutura clara e direta
- **Menos complexidade:** Formato mais clean
- **Testes documentados:** Cada ajuste inclui teste

---

## 📚 Regra #3: Auto-documentação de Regras

### **SEMPRE que alterar `zoe-chore.mdc`:**
- Atualiza automaticamente este arquivo (`how-zoe-works.md`)
- Documenta como usar cada comando
- Inclui exemplos práticos
- Atualiza estrutura de arquivos

---

## 🛠️ Detecção Automática de Estilo

### **Processo de detecção:**
1. **Verifica se existe:**
   - `tailwind.config.js` ou `tailwind.config.ts`
   - `tailwindcss` em package.json
   - `@tailwind` imports em CSS

2. **Resultado:**
   - **SE ENCONTRADO** → Usa Tailwind + arquivo `.classes.ts`
   - **SE NÃO ENCONTRADO** → Usa Styled-components no `.template.tsx`

### **Estratégia Tailwind:**
```tsx
// .classes.ts
export const classes = {
  container: "flex flex-col space-y-4",
  header: "text-lg font-semibold"
};

// .template.tsx
<div className={classes.container}>
```

### **Estratégia Styled-components:**
```tsx
// .template.tsx
import styled from 'styled-components';

const Container = styled.div`
  display: flex;
  flex-direction: column;
`;
```

---

## 🎯 Configuração de Teste

### **Dependências necessárias:**
- vitest, @testing-library/react, @testing-library/user-event
- @testing-library/jest-dom, @vitejs/plugin-react, jsdom

### **Configuração:**
- vitest.config.ts com jsdom environment
- src/test/setup.ts com jest-dom matchers e cleanup automático
- Aliases para paths (@/components, etc.)

---

## 🚫 Proibições

### **Nunca fazer:**
- Usar `fireEvent` em vez de `userEvent`
- Criar componentes sem testes
- Testes sem `userEvent.setup()`
- Class components
- Inline styles
- Console.log em produção

### **Sempre fazer:**
- `const user = userEvent.setup()` em cada teste
- Arquivo `.test.tsx` para cada componente
- Interações realistas com userEvent
- Testes de acessibilidade
- Cleanup após cada teste

---

## 🎯 Convenções de Nomenclatura

### **Pastas e arquivos:**
- **Pastas:** kebab-case (user-profile, update-modal)
- **Componentes:** PascalCase (UserProfile, UpdateModal)
- **Arquivos:** kebab-case + extensão específica
- **Classes:** camelCase no .classes.ts

### **Estrutura de arquivo:**
```
[nome-kebab-case]/
├── [nome-kebab-case].component.tsx
├── [nome-kebab-case].template.tsx
├── [nome-kebab-case].classes.ts (se Tailwind)
├── [nome-kebab-case].types.ts
└── [nome-kebab-case].composite.tsx (opcional)
```

---

## 🚀 Stack Tecnológica Suportada

### **Principais:**
- **Frontend:** React 18+ / Next.js 14+
- **Linguagem:** TypeScript
- **Estilo:** Tailwind CSS (preferência) ou Styled-components
- **Estado:** Context API / Zustand
- **Forms:** React Hook Form
- **Requests:** Axios / SWR

### **Padrões sempre aplicados:**
- Componentes funcionais com hooks
- Separação clara: lógica (.component) vs visual (.template)
- TypeScript interfaces em arquivo separado
- Responsive design (mobile-first)
- Accessibility (ARIA labels)
- Performance otimizada

---

## 📁 Estrutura do Sistema

```
cursor-boilerplate/
├── zoe-chore.mdc           # ⚙️ Regras principais
├── resume-progress.mdc     # 🔄 Arquivo de retomada
├── how-zoe-works.md        # 📚 Este guia
├── templates/              # 📋 Templates de código
│   ├── react-component.mdc
│   └── next-page.mdc
├── context/                # 🎯 Contexto da stack
│   └── stack-tech.mdc
├── commands/               # ⚡ Comandos rápidos
│   ├── fix-bugs.mdc
│   └── detect-style.mdc
├── workflows/              # 🔄 Fluxos de trabalho
│   └── frontend.mdc
├── patterns/               # 🎨 Padrões de código
└── progress/               # 📊 Documentação automática
    └── [YYYY-MM-DD]/
```

---

## 🎯 Exemplos Práticos

### **Exemplo 1: Criar componente**
```bash
criar componente user-profile
```
**Resultado:** Pasta `components/user-profile/` com 4-5 arquivos

### **Exemplo 2: Ajustar código existente**
```tsx
// Envio este código:
function MyComponent() {
  return <div>Hello</div>;
}
```
**Resultado:** Código ajustado com TypeScript, boas práticas, estrutura correta

### **Exemplo 3: Retomar trabalho**
```bash
retomar progresso anterior
```
**Resultado:** Lê `commands/resume-progress.mdc` e executa automaticamente

---

## 🎨 Regra #6: Formatação Moderada

### **Usar emojis APENAS em títulos principais:**

#### **Respostas da Zoe:**
- **Títulos** principais com emoji temático
- **Formatação** em negrito, itálico, código
- **Listas** sem emojis, formatação limpa
- **Conteúdo regular** sem emojis desnecessários

#### **Arquivos Criados:**
- **README.md** com emojis só em títulos de seções
- **Componentes** com comentários limpos
- **Testes** com descrições claras
- **Documentação** com formatação moderada

#### **Padrão de Emojis (apenas títulos):**
- 🏁 **Execução/Início**
- 🧪 **Testes**
- 📚 **Documentação**  
- 🎨 **UI/Design**
- ⚡ **Comandos**

---

*🤖 Última atualização: 2025-06-07 - Auto-gerado pelo Sistema Zoe* ✨ 