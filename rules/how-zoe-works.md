# 🤖 Como Usar a Zoe - Guia Completo para Humanos

---
⚠️ **DOCUMENTAÇÃO ATUALIZADA AUTOMATICAMENTE EM 2025-06-09T17:00:00Z**  
**Mudanças detectadas:** Sistema de Contexto por Projeto v2.0 implementado
---

## 🎯 O que é a Zoe?

A **Zoe** é sua assistente inteligente para desenvolvimento React/Next.js que:

- ✅ **Entende automaticamente** seu projeto (nunca pergunta a mesma coisa)
- ✅ **Trabalha com múltiplos projetos** sem misturar informações  
- ✅ **Cria código completo** com testes automáticos
- ✅ **Documenta tudo** que você faz
- ✅ **Detecta sua stack** automaticamente (React, Next.js, TypeScript, Tailwind, etc.)
- ✅ **Lembra do seu progresso** e sugere próximos passos

## 🚀 Primeiros Passos

### **1. Iniciando um Projeto**

```bash
zoe iniciar meu-projeto
```

**O que acontece:**
- 🔍 Zoe verifica se já conhece este projeto
- 📂 Se não conhece, analisa seus arquivos (package.json, etc.)
- 🎯 Pergunta apenas o essencial (objetivo do projeto)
- ✅ Cria contexto e está pronta para trabalhar!

**Exemplo prático:**
```
Você: "zoe iniciar loja-virtual"

Zoe detecta automaticamente:
✅ React + Next.js (pelo package.json)
✅ TypeScript (pelo tsconfig.json)  
✅ Tailwind CSS (pelo tailwind.config.js)

Zoe pergunta apenas:
"Qual o objetivo desta loja virtual?"

Você responde e pronto! 🎉
```

### **2. Trabalhando com Múltiplos Projetos**

```bash
# Alternar para outro projeto
set project blog-pessoal

# Ver todos os seus projetos  
list projects

# Ver progresso de um projeto específico
list progress loja-virtual
```

**Cada projeto é completamente isolado:**
- 🗂️ Configurações próprias
- 📊 Progresso separado  
- 🔧 Stack específica
- 📝 Histórico independente

## ⚡ Comandos Essenciais

### **🏗️ Criar Componentes**

```bash
criar componente botao-principal
```

**O que você ganha:**
```
components/botao-principal/
├── botao-principal.component.tsx    # 🧠 Lógica (useState, handlers)
├── botao-principal.template.tsx     # 🎨 Visual (JSX)
├── botao-principal.classes.ts       # 🎯 Estilos Tailwind organizados
├── botao-principal.types.ts         # 📝 TypeScript interfaces
└── botao-principal.test.tsx         # 🧪 Testes automáticos
```

**Zoe já cria tudo:**
- ✅ Estrutura completa separada (lógica + visual)
- ✅ TypeScript configurado
- ✅ Estilos organizados (Tailwind ou Styled Components)
- ✅ Testes funcionais obrigatórios

### **📄 Criar Páginas**

```bash
criar página dashboard
```

**Estrutura criada:**
```
pages/dashboard/
├── dashboard.page.tsx               # 📄 Página + Head component
├── dashboard.template.tsx           # 🎨 Layout visual
├── dashboard.classes.ts             # 🎯 Estilos
├── dashboard.types.ts               # 📝 Props e interfaces
└── dashboard.test.tsx               # 🧪 Testes de página
```

### **🔧 Comandos de Manutenção**

```bash
# Corrigir bugs automaticamente
fix bugs

# Otimizar performance
otimizar performance

# Aprender com erros anteriores
aprender com os erros
```

## 📊 Gerenciamento de Projetos

### **Ver Todos os Seus Projetos**

```bash
list projects
```

**Resultado:**
```
📋 PROJETOS EXISTENTES:

🎯 loja-virtual ← ATIVO
   Stack: Next.js, TypeScript, Tailwind, Prisma
   Objetivo: E-commerce completo
   Progresso: 5 dias registrados
   Última atividade: Hoje

📁 blog-pessoal
   Stack: Gatsby, MDX, Styled Components
   Objetivo: Blog técnico
   Progresso: 3 dias registrados
   Última atividade: Ontem

📊 RESUMO:
- Total de projetos: 2
- Projeto ativo: loja-virtual
- Comandos disponíveis: set project, export project
```

### **Ver Progresso Detalhado**

```bash
list progress loja-virtual
```

**Resultado:**
```
📈 PROGRESSO: loja-virtual

📅 2025-06-09 ← HOJE
   ✅ Tarefas: 3/5 concluídas
   🔧 Criado: ProductCard, AddToCart
   📝 Decisão: Usar Context API para carrinho
   
📅 2025-06-08
   ✅ Tarefas: 5/5 concluídas  
   🔧 Criado: Header, Navigation
   📝 Decisão: Layout responsivo mobile-first

📊 RESUMO GERAL:
- Dias trabalhados: 5
- Componentes criados: 8
- Taxa de conclusão: 78%
```

### **Exportar/Importar Projetos**

```bash
# Exportar projeto (backup ou compartilhar)
export project loja-virtual

# Importar projeto
import project loja-virtual-export-2025-06-09.zip
```

**Útil para:**
- 💾 Fazer backup completo
- 👥 Compartilhar com equipe
- 🖥️ Migrar entre computadores
- 📦 Arquivar projetos antigos

## 🔍 Como a Zoe "Lembra" dos Seus Projetos

### **Primeira Vez (Projeto Novo):**
1. Zoe analisa seus arquivos automaticamente
2. Pergunta apenas o que não conseguiu detectar
3. Salva tudo em contexto específico do projeto
4. Nunca mais pergunta as mesmas coisas!

### **Próximas Vezes (Projeto Conhecido):**
1. Carrega contexto salvo instantaneamente
2. Sabe sua stack, preferências, histórico
3. Sugere próximos passos baseado no progresso
4. Continua de onde parou

## 🎯 Fluxos Comuns de Uso

### **Cenário 1: Desenvolvedor Iniciante**
```bash
# Primeiro projeto
zoe iniciar meu-primeiro-app

# Zoe detecta React automaticamente
# Pergunta apenas: "Qual objetivo do app?"

# Criar primeiro componente
criar componente hello-world

# Zoe cria tudo pronto com testes!
```

### **Cenário 2: Múltiplos Projetos**
```bash
# Manhã - trabalhar no e-commerce
zoe iniciar loja-virtual
criar componente product-grid

# Tarde - mudar para projeto pessoal  
set project blog-pessoal
criar página sobre-mim

# Cada projeto mantém contexto isolado!
```

### **Cenário 3: Trabalho em Equipe**
```bash
# Colega compartilha projeto
import project dashboard-admin-export.zip

# Zoe importa contexto completo
# Você já pode trabalhar sabendo toda história!

set project dashboard-admin
list progress dashboard-admin
# Ver o que foi feito, continuar trabalho
```

## 🛠️ Resolução de Problemas

### **❓ "Zoe não detectou minha stack corretamente"**
```bash
# Detectar novamente
detect stack

# Ou corrigir manualmente
update stack
```

### **❓ "Quero ver todos os comandos disponíveis"**
```bash
list projects
# Mostra comandos relacionados a projetos

# Para comandos de criação:
# criar componente [nome]
# criar página [nome]  
# fix bugs
# otimizar performance
```

### **❓ "Como mudar configurações do projeto atual?"**
```bash
update stack
# Permite atualizar tecnologias e preferências
```

### **❓ "Preciso recuperar projeto deletado"**
```bash
# Se você fez export antes:
import project [arquivo-de-backup].zip

# Zoe restaura tudo: contexto + progresso + histórico
```

## 📚 Stack Tecnológica Suportada

### **Frontend (Detectados Automaticamente):**
- ⚛️ **React** 18+ (com hooks)
- ⚡ **Next.js** 14+ (App Router ou Pages)
- 🔷 **TypeScript** (preferência)
- 🎨 **Tailwind CSS** (primeira opção)
- 💅 **Styled Components** (alternativa)

### **Backend:**
- 🟢 **Node.js** 
- 🗄️ **Prisma** (ORM preferido)
- 🐘 **PostgreSQL** / **MySQL**

### **Ferramentas:**
- 🧪 **Vitest** (testes rápidos)
- 📱 **Testing Library** (testes realistas)
- 🎯 **ESLint** (qualidade de código)

## ✅ O que a Zoe Faz Automaticamente

### **📝 Documentação:**
- Registra todo progresso diário
- Documenta decisões importantes
- Mantém histórico por projeto
- Atualiza esta documentação quando evolui

### **🧪 Testes:**
- Cria teste para cada componente
- Usa interações realistas (userEvent)
- Testa acessibilidade e states
- NUNCA pula a criação de testes

### **🎯 Organização:**
- Separa lógica de apresentação
- Organiza estilos em arquivos específicos
- Mantém TypeScript configurado
- Isola contexto entre projetos

### **🔍 Inteligência:**
- Detecta stack automaticamente
- Lembra preferências por projeto
- Sugere próximos passos
- Aprende com padrões de uso

---

## 🎉 Por que Usar a Zoe?

### **Para Você:**
- ⏰ **Economiza tempo**: Nunca repete configurações
- 🧠 **Lembra tudo**: Contexto preservado sempre
- 🎯 **Foca no importante**: Ela cuida da estrutura
- 📈 **Acompanha progresso**: Vê evolução clara

### **Para Projetos:**
- 🏗️ **Estrutura consistente**: Padrões profissionais
- 🧪 **Qualidade garantida**: Testes obrigatórios
- 📚 **Bem documentado**: Histórico completo
- 🔄 **Fácil manutenção**: Código organizado

### **Para Equipes:**
- 🤝 **Colaboração fácil**: Export/import de contexto
- 📋 **Padrões unificados**: Todo mundo usa mesma estrutura
- 🎯 **Onboarding rápido**: Novos membros entendem contexto
- 💾 **Backup automático**: Nunca perde trabalho

---

**🚀 Pronto para começar?**

Digite `zoe iniciar [nome-do-seu-projeto]` e deixe a Zoe cuidar do resto!

---

*🤖 Documentação atualizada automaticamente pela Zoe*  
*Última atualização: 2025-06-09 - Sistema de Contexto por Projeto v2.0* 