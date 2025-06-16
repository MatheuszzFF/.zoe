# 📦 Comandos Arquivados - Sistema Zoe

**Data:** 2025-06-13  
**Motivo:** Fase 1 - Limpeza de Escalabilidade  
**Critério:** Comandos nunca usados (57% do total)

## 📋 **Comandos Movidos para Arquivo**

### **Templates Específicos (4 arquivos):**
- `create-component-master.json` - Template master (nunca usado)
- `create-form-shadcn.json` - Forms Shadcn (nunca usado) 
- `create-component-rn-expo.json` - React Native (nunca usado)
- `create-component-web-basic.json` - Web básico (nunca usado)

### **Gestão de Projeto (8 arquivos):**
- `roadmap-manager.json` - Roadmap (nunca usado)
- `export-project.json` - Export (nunca usado)
- `import-project.json` - Import (nunca usado)
- `list-progress.json` - List progress (nunca usado)
- `show-history.json` - History (nunca usado)
- `update-stack.json` - Update stack (nunca usado)
- `import-context.json` - Import context (nunca usado)
- `export-context.json` - Export context (nunca usado)

### **Feedback/Learning (4 arquivos):**
- `test-feedback.json` - Test feedback (nunca usado)
- `feedback-report.json` - Feedback report (nunca usado)
- `feedback-search.json` - Feedback search (nunca usado)
- `auto-learning.json` - Auto learning (nunca usado)

### **Documentação/Manutenção (3 arquivos):**
- `create-documentation.json` - Documentation (nunca usado)
- `resume-progress.json` - Resume progress (nunca usado)
- `optimize-performance.json` - Performance (nunca usado)

## 🔄 **Como Restaurar**

Se algum comando for necessário no futuro:
```bash
# Mover de volta para commands/
mv .zoe/archived/commands/[nome-comando].json .zoe/rules/commands/
```

## 📊 **Impacto da Limpeza**

- **ANTES:** 30 comandos (57% nunca usados)
- **DEPOIS:** 11 comandos ativos (90% utilizados)
- **ECONOMIA:** ~85KB de commands não utilizados
- **BENEFÍCIO:** Sistema mais limpo e focado 