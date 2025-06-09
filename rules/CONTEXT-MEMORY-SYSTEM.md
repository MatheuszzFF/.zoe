# 🧠 Sistema de Context Memory - Zoe v1.0

## 📋 Visão Geral

O Context Memory é um sistema inteligente que mantém memória persistente do projeto, evitando repetição de informações e fornecendo contexto acumulativo para todas as respostas da Zoe.

## 🗂️ Arquitetura do Sistema

### **Arquivos Principais:**
- **`project-memory.json`** - Memória central do contexto
- **`stack-tech.mdc`** - Configuração técnica (legacy, mantido por compatibilidade)
- **`context-updates.log`** - Log de atualizações automáticas

### **Comandos Disponíveis:**
- **`resumir contexto`** - Visão completa do estado atual
- **`atualizar stack`** - Scan automático de dependências
- **`mostrar histórico`** - Cronologia de decisões
- **`exportar contexto`** - Package para outros projetos
- **`importar contexto`** - Aplicar configurações externas

### **Actions Automáticas:**
- **`context-updater`** - Atualização automática do contexto
- **`priority-logger`** - Integração com sistema de prioridades

## 🧠 **project-memory.json - Estrutura Completa**

```json
{
  "_metadata": {
    "version": "1.0",
    "created": "YYYY-MM-DD",
    "last_updated": "YYYY-MM-DDTHH:MM:SSZ",
    "project_name": "string",
    "description": "string"
  },
  
  "project_overview": {
    "name": "string",
    "type": "Design System | Web App | Library",
    "objectives": ["array", "of", "goals"],
    "current_phase": "string",
    "priority_focus": "string"
  },
  
  "tech_stack": {
    "frontend": {
      "framework": "React | Vue | Angular",
      "meta_framework": "Next.js | Nuxt | etc",
      "language": "TypeScript | JavaScript",
      "styling": "Tailwind | Styled-components | CSS"
    },
    "state_management": ["Context API", "Zustand", "Redux"],
    "forms": "React Hook Form | Formik",
    "http_client": ["Axios", "SWR", "TanStack Query"],
    "testing": {
      "runner": "Vitest | Jest",
      "library": "@testing-library/react",
      "interactions": "@testing-library/user-event",
      "approach": "userEvent mandatory"
    },
    "dependencies_verified": {
      "tailwind_detected": boolean,
      "package_versions": {},
      "config_files": []
    }
  },
  
  "architectural_decisions": [
    {
      "date": "YYYY-MM-DD",
      "decision": "string",
      "rationale": "string",
      "impact": "string",
      "implementation_status": "Planned | In Progress | Completed"
    }
  ],
  
  "code_patterns": {
    "component_structure": {
      "naming": "kebab-case",
      "files": ["array", "of", "file", "types"],
      "props_pattern": "string",
      "export_pattern": "string"
    },
    "testing_mandatory": {
      "setup": "userEvent.setup()",
      "coverage": ["areas", "to", "test"],
      "forbidden": ["practices", "to", "avoid"]
    }
  },
  
  "components_created": [
    {
      "name": "string",
      "date": "YYYY-MM-DD", 
      "type": "Design System | Page | Utility",
      "features": ["array", "of", "features"],
      "status": "Completed | In Progress",
      "files_created": ["array", "of", "files"]
    }
  ],
  
  "preferences": {
    "math_preferences": {
      "communication_style": "string",
      "nickname": "Math",
      "language": "Portuguese",
      "feedback_style": "string"
    },
    "coding_style": {
      "file_naming": "English",
      "comments": "Portuguese",
      "variables": "English preferred"
    },
    "project_style": {
      "component_priority": "Quality over quantity",
      "test_coverage": "Mandatory",
      "documentation": "Comprehensive"
    }
  },
  
  "current_context": {
    "last_session_summary": "string",
    "active_work": "string", 
    "next_suggested": ["array", "of", "tasks"],
    "pending_tasks": ["array"],
    "blockers": ["array"],
    "session_date": "YYYY-MM-DD"
  },
  
  "learning_insights": [
    {
      "date": "YYYY-MM-DD",
      "insight": "string",
      "application": "string",
      "confidence": "low | medium | high",
      "source": "feedback | observation | pattern"
    }
  ],
  
  "project_metrics": {
    "components_completed": number,
    "tests_created": number,
    "commands_implemented": number,
    "system_improvements": number,
    "quality_score": number,
    "velocity_trend": "string"
  }
}
```

## ⚡ **Comandos do Context Memory**

### **1. resumir contexto**
**Uso:** `resumir contexto`
**Função:** Apresenta visão completa do estado atual
**Output:**
- Status do projeto e fase atual
- Stack tecnológica detectada
- Componentes criados
- Padrões estabelecidos
- Métricas de progresso
- Sugestões baseadas no contexto

### **2. atualizar stack**
**Uso:** `atualizar stack`
**Função:** Escaneia projeto e atualiza informações técnicas
**Process:**
- Detecta dependências em package.json
- Verifica arquivos de configuração
- Analisa compatibilidade entre ferramentas
- Atualiza project-memory.json
- Reporta health score da stack

### **3. mostrar histórico**
**Uso:** `mostrar histórico`
**Função:** Cronologia completa de evolução
**Output:**
- Timeline de componentes criados
- Decisões arquiteturais com datas
- Evolução dos testes
- Insights de padrões identificados
- Análise de momentum atual

### **4. exportar contexto**
**Uso:** `exportar contexto [tipo]`
**Tipos:** `completo | stack | padrões`
**Função:** Gera package reutilizável
**Output:**
- Arquivo JSON sanitizado
- Localização em .zoe/exports/
- Instruções de uso
- Backup automático

### **5. importar contexto**
**Uso:** `importar contexto [arquivo]`
**Função:** Aplica configurações externas
**Process:**
- Valida compatibilidade
- Detecta conflitos
- Cria backup pré-importação
- Aplica mudanças safely
- Reporta resultado

## 🤖 **Actions Automáticas**

### **context-updater (Level 25)**
**Trigger:** Qualquer mudança importante
**Função:**
- Detecta novos componentes
- Registra decisões arquiteturais
- Atualiza métricas automaticamente
- Gera insights baseados em padrões
- Sugere próximos passos

**Executa quando:**
- Componente é criado
- Sistema é modificado
- Feedback é capturado
- Nova sessão inicia

## 📊 **Como o Sistema Funciona**

### **1. Inicialização Automática**
```
Primeira vez:
1. Zoe detecta ausência de project-memory.json
2. Escaneia projeto automaticamente
3. Gera contexto inicial baseado em arquivos
4. Cria estrutura básica de preferências
```

### **2. Atualização Contínua**
```
A cada comando:
1. Sistema consulta project-memory.json
2. Usa contexto para personalizar resposta
3. context-updater atualiza informações
4. Novos insights são registrados
```

### **3. Utilização Inteligente**
```
Em todas as respostas:
- Evita repetir informações já conhecidas
- Sugere baseado em histórico
- Mantém consistência com padrões
- Adapta tom baseado em preferências
```

## 🔄 **Export/Import System**

### **Casos de Uso:**
- **Novo projeto:** Importar configurações de projeto similar
- **Backup:** Exportar configurações para segurança
- **Sharing:** Compartilhar padrões entre projetos
- **Migration:** Mover configurações entre ambientes

### **Tipos de Export:**
```json
{
  "completo": "Stack + padrões + insights + preferências",
  "stack": "Apenas configurações técnicas",
  "padrões": "Apenas decisões arquiteturais"
}
```

### **Processo de Import:**
```
1. Validação de compatibilidade
2. Detecção de conflitos
3. Backup do estado atual
4. Merge inteligente
5. Verificação de integridade
```

## 🎯 **Exemplos Práticos**

### **Cenário 1: Novo Componente**
```
User: "criar componente Input"
Zoe: [Consulta context → Sabe que usa Tailwind + userEvent → Cria seguindo padrões → Atualiza métricas]
```

### **Cenário 2: Sugestão Inteligente**
```
User: "zoe iniciar"
Zoe: [Consulta context → Vê que tem Button/DatePicker → Sugere Input como próximo → Baseia em padrão de design system]
```

### **Cenário 3: Novo Projeto**
```
User: "importar contexto design-system-config.json"
Zoe: [Analisa compatibilidade → Aplica padrões → Configura stack → Pronto para usar]
```

## 🛠️ **Manutenção e Troubleshooting**

### **Resetar Context Memory:**
```
1. Backup: Copiar project-memory.json
2. Delete: Remover arquivo atual
3. Restart: Executar "atualizar stack" 
4. Verify: Executar "resumir contexto"
```

### **Corrigir Inconsistências:**
```
1. Execute: "atualizar stack"
2. Verifique: dependências detectadas
3. Ajuste: manualmente se necessário
4. Update: project-memory.json
```

### **Debug Context Issues:**
```
1. Check: .zoe/rules/logs/context-updates.log
2. Verify: project-memory.json structure
3. Test: "resumir contexto" command
4. Reset: if corruption detected
```

## 📈 **Melhorias Futuras**

### **Planejadas:**
- **AI-powered suggestions** baseadas em análise de código
- **Integration hooks** com IDEs
- **Team context sharing** para projetos colaborativos
- **Performance metrics** tracking
- **Automated refactoring** suggestions

### **Possíveis:**
- **Cloud sync** para backup automático
- **Template marketplace** para exportar/importar
- **Analytics dashboard** para métricas avançadas
- **Plugin system** para extensibilidade

---

**Versão:** 1.0  
**Última atualização:** 08/06/2025  
**Autor:** Math + Zoe  
**Status:** ✅ Implementado e funcional 