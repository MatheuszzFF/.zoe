# 🎯 Sistema de Contexto por Projeto - Zoe v2.0

## 📋 Visão Geral

O **Sistema de Contexto por Projeto** é uma evolução do sistema Zoe que permite trabalhar com múltiplos projetos de forma totalmente isolada e inteligente. Cada projeto mantém seu próprio contexto, stack, progresso e histórico, evitando mistura de informações.

## 🗂️ Estrutura do Sistema

### **Organização de Arquivos**
```
.zoe/rules/context/
├── active-project.json              # Projeto atualmente ativo
├── project-context-template.json    # Template para novos projetos
├── daily-progress-template.md       # Template para progresso diário
└── projects/
    ├── projeto-1/
    │   ├── project-context.json     # Contexto específico
    │   ├── stack-detection.json     # Stack autodetectada
    │   ├── progress/
    │   │   ├── 2025-06-09/
    │   │   │   └── README.md        # Progresso do dia
    │   │   └── 2025-06-10/
    │   │       └── README.md
    │   └── logs/
    │       └── creation.log         # Log de criação
    └── projeto-2/
        └── [mesma estrutura]
```

## 🚀 Comandos Principais

### **1. Inicialização de Projeto**
```bash
zoe iniciar [nome-do-projeto]
```

**Fluxo Inteligente:**
- ✅ **Existe contexto:** Carrega automaticamente, sem perguntas
- 🆕 **Não existe:** Cria contexto com autodetecção + perguntas mínimas

**Exemplo - Projeto Existente:**
```
Usuário: "zoe iniciar dashboard-admin"
Zoe: 
📍 **Contexto encontrado:** Projeto 'dashboard-admin' localizado
📊 **Stack:** Next.js, TypeScript, Tailwind, Prisma
🎯 **Objetivo:** E-commerce completo com admin
📈 **Última sessão:** Ontem - Componente ProductCard criado
🚀 **Sugestão:** Continuar com ProductList ou carrinho?
```

**Exemplo - Projeto Novo:**
```
Usuário: "zoe iniciar blog-pessoal"
Zoe:
🔍 **Autodetecção:** package.json detectado - Next.js + TypeScript
🆕 **Novo projeto:** 'blog-pessoal' configurado
🎯 **Objetivo necessário:** Qual objetivo deste blog?
[Após resposta]
✅ **Contexto criado:** Pronto para começar!
```

### **2. Gerenciamento de Projetos**

#### **Ativar Projeto**
```bash
set project [nome]
projeto [nome]
setar projeto [nome]
```

#### **Listar Projetos**
```bash
list projects
listar projetos
mostrar projetos
```

#### **Ver Progresso**
```bash
list progress [nome]
listar progresso [nome]
progresso [nome]
```

### **3. Exportação e Importação**

#### **Exportar Projeto**
```bash
export project [nome]
exportar projeto [nome]
```

#### **Importar Projeto**
```bash
import project [caminho]
importar projeto [caminho]
```

## 🔍 Sistema de Autodetecção

### **Stack Technologies Detectadas**

#### **Frontend Frameworks:**
- **React:** package.json → react
- **Next.js:** package.json → next
- **Vue.js:** package.json → vue
- **Angular:** package.json → @angular/core

#### **Languages:**
- **TypeScript:** tsconfig.json ou @types/* em package.json
- **JavaScript:** package.json sem TypeScript
- **Python:** requirements.txt, Pipfile
- **PHP:** composer.json
- **Ruby:** Gemfile

#### **CSS Frameworks:**
- **Tailwind:** tailwind.config.js ou tailwindcss em package.json
- **Styled Components:** styled-components em package.json
- **Emotion:** @emotion/* em package.json

#### **Databases & ORMs:**
- **Prisma:** prisma/ folder ou prisma em package.json
- **Sequelize:** sequelize em package.json
- **Mongoose:** mongoose em package.json

#### **Testing:**
- **Jest:** jest em package.json
- **Vitest:** vitest em package.json
- **Cypress:** cypress em package.json

### **Processo de Detecção**
1. **Varrer arquivos** de configuração (package.json, composer.json, etc.)
2. **Analisar dependências** e estrutura de pastas
3. **Calcular confiança** da detecção (0-100%)
4. **Apresentar para validação** do usuário
5. **Permitir refinamento** manual se necessário

## 🎯 Sistema de Isolamento

### **Princípios de Isolamento:**
- ✅ **Contexto totalmente separado** por projeto
- ✅ **Progresso nunca misturado** entre projetos
- ✅ **Stack específica** por projeto
- ✅ **Logs independentes** por projeto
- ✅ **Configurações isoladas** por projeto

### **Project Context Manager (Action Level 0):**
- **Executa ANTES** de qualquer comando de desenvolvimento
- **Valida projeto ativo** e carrega contexto específico
- **Bloqueia comandos** se projeto não definido
- **Garante isolamento** total entre projetos

### **Comandos Afetados pelo Isolamento:**
- `create component` → Usa stack do projeto ativo
- `create page` → Usa padrões do projeto ativo
- `fix bugs` → Analisa apenas código do projeto ativo
- Progresso salvo em pasta específica do projeto

### **Comandos Globais (Não Afetados):**
- `list projects`
- `export project`
- `import project`
- `change-rule`

## 📈 Sistema de Progresso

### **Estrutura Diária:**
```
progress/[nome-do-projeto]/[YYYY-MM-DD]/README.md
```

### **Conteúdo Automático:**
- **Localização Zoe:** Como se localizou no projeto
- **Stack resumida:** Tecnologias do projeto
- **Tarefas do dia:** Baseadas no contexto
- **Atividades realizadas:** Preenchido durante trabalho
- **Decisões tomadas:** Registradas automaticamente
- **Componentes criados:** Listados por sessão
- **Métricas:** Comandos, tempo, produtividade

### **Documentação de Localização:**
```markdown
## 🎯 Localização Zoe
- **Como me localizei:** Contexto existente carregado
- **Projeto:** dashboard-admin
- **Stack:** Next.js, TypeScript, Tailwind
- **Sessão iniciada:** 2025-06-09T10:30:00Z
```

## 🔄 Exportação e Importação

### **Exportação:**
- **Contexto completo** (project-context.json)
- **Todo o progresso** (pasta progress/)
- **Stack detection** (stack-detection.json)
- **Logs específicos** (pasta logs/)
- **Manifesto** com metadados

### **Arquivo de Export:**
```
projeto-export-2025-06-09.zip
├── manifest.json         # Metadados da exportação
├── project-context.json  # Contexto do projeto
├── stack-detection.json  # Stack detectada
├── progress/             # Todo o histórico
└── logs/                 # Logs específicos
```

### **Importação com Conflitos:**
- **Detecção automática** de projetos existentes
- **Comparação inteligente** de datas e conteúdo
- **Opções de resolução:**
  1. Sobrescrever (com backup)
  2. Importar com novo nome
  3. Mesclar progresso
  4. Cancelar

## 📊 Priority System Integration

### **Levels de Prioridade:**
- **Level 0:** `project-context-manager` (OBRIGATÓRIO)
- **Level 11:** `set-project` 
- **Level 19-23:** Comandos de gerenciamento de projetos
- **Level 24:** `stack-autodetection`

### **Categorias Adicionadas:**
- **project-isolation:** Isolamento obrigatório (Level 0)
- **project-management:** Gerenciamento de projetos (Level 10-25)
- **project-setup:** Configuração de projetos (Level 20-30)

## 🎯 Fluxos de Uso

### **Cenário 1: Desenvolvedor com Múltiplos Projetos**
```bash
# Manhã - Trabalhar no e-commerce
$ zoe iniciar loja-virtual
📍 Contexto carregado: Next.js, Prisma, Tailwind
$ create component ProductCard

# Tarde - Mudar para blog
$ set project blog-pessoal  
📍 Contexto alterado: Gatsby, MDX, Styled Components
$ create component BlogPost

# Isolamento total garantido!
```

### **Cenário 2: Novo Desenvolvedor**
```bash
$ zoe iniciar meu-primeiro-projeto
🔍 Autodetecção: React + TypeScript detectados
🎯 Objetivo: Qual objetivo do projeto?
✅ Contexto criado e configurado!
```

### **Cenário 3: Colaboração em Equipe**
```bash
# Desenvolvedor A exporta projeto
$ export project dashboard-admin
📦 Arquivo: dashboard-admin-export-2025-06-09.zip

# Desenvolvedor B importa
$ import project dashboard-admin-export-2025-06-09.zip
✅ Projeto importado com todo o contexto!
```

## ✅ Checklist de Implementação

- ✅ **Comando `zoe iniciar`** com busca de contexto
- ✅ **Autodetecção de stack** inteligente
- ✅ **Sistema de projetos** isolados
- ✅ **Comandos de gerenciamento** (set, list, progress)
- ✅ **Export/Import** com verificação de conflitos
- ✅ **Progresso separado** por projeto/data
- ✅ **Templates** para contexto e progresso
- ✅ **Project Context Manager** (isolamento)
- ✅ **Priority System** atualizado
- ✅ **Documentação** completa

## 🎉 Benefícios do Sistema

### **Para o Desenvolvedor:**
- ✅ **Nunca repetir informações** em projetos conhecidos
- ✅ **Alternância rápida** entre projetos
- ✅ **Contexto sempre correto** para cada projeto
- ✅ **Histórico preservado** por projeto
- ✅ **Backup automático** de contexto

### **Para Equipes:**
- ✅ **Compartilhamento de contexto** via export/import
- ✅ **Padronização** de estrutura de progresso
- ✅ **Colaboração facilitada** com contexto completo
- ✅ **Onboarding rápido** em projetos existentes

### **Para Projetos:**
- ✅ **Isolamento total** entre diferentes projetos
- ✅ **Stack específica** preservada por projeto
- ✅ **Progresso cronológico** detalhado
- ✅ **Decisões arquiteturais** documentadas
- ✅ **Métricas de produtividade** por projeto

---

*Sistema implementado em 2025-06-09 por Zoe v2.0*
*Documentação atualizada automaticamente* 