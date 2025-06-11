# 📚 SISTEMA MCP ESTRUTURADO - DOCUMENTAÇÃO OFICIAL

**Versão:** 1.0  
**Data:** 11 de junho de 2025  
**Criado por:** Zoe System por solicitação do Math  
**Última Atualização:** 11/06/2025 - Sistema inicial implementado

---

## 🎯 **VISÃO GERAL**

Sistema otimizado de Memory Control Protocol (MCP) para armazenamento e recuperação eficiente de conhecimento. Resolve problemas de busca imprecisa e informações "perdidas" através de estrutura padronizada.

---

## 📋 **TAXONOMIA DE ENTIDADES**

### **1️⃣ CATEGORIAS PRINCIPAIS**

| Categoria | Prefixo | Exemplo | Descrição |
|-----------|---------|---------|-----------|
| **Comandos** | `cmd-` | `cmd-zoe-iniciar` | Comandos do Sistema Zoe |
| **Projetos** | `proj-` | `proj-kess-system` | Projetos em desenvolvimento |
| **Tecnologias** | `tech-` | `tech-react-native` | Stack e ferramentas |
| **Padrões** | `pattern-` | `pattern-kebab-case` | Convenções e padrões |
| **Problemas** | `issue-` | `issue-expo-build` | Problemas identificados |
| **Soluções** | `fix-` | `fix-dependencies` | Correções testadas |
| **Regras** | `rule-` | `rule-mcp-protocol` | Regras do sistema |
| **Pessoas** | `user-` | `user-math-prefs` | Preferências e perfis |

### **2️⃣ CONVENÇÃO DE NOMES**

**✅ FORMATO OBRIGATÓRIO:**
- **Minúsculas:** Sempre usar lowercase
- **Hífen:** Separar palavras com `-`
- **Prefixo:** Sempre incluir categoria
- **Descritivo:** Nome deve ser autoexplicativo

**❌ EVITAR:**
- Espaços, underscores, CamelCase
- Nomes genéricos sem contexto
- Prefixos incorretos

---

## 🏷️ **SISTEMA DE TAGS**

### **1️⃣ CATEGORIAS DE TAGS**

| Categoria | Tags Exemplo | Uso |
|-----------|--------------|-----|
| **Sistema** | `#zoe` `#mcp` `#cursor` | Funcionalidades do sistema |
| **Tecnologia** | `#react` `#typescript` `#expo` | Stack tecnológica |
| **Tipo** | `#command` `#problem` `#solution` | Tipo de conteúdo |
| **Prioridade** | `#critical` `#important` `#nice` | Nível de importância |
| **Status** | `#tested` `#working` `#deprecated` | Estado atual |
| **Contexto** | `#math` `#preference` `#workflow` | Contexto de uso |

### **2️⃣ REGRAS DE TAGGING**

**🎯 OBRIGATÓRIAS:**
- Toda entidade deve ter pelo menos 2 tags
- Sempre incluir tag de categoria (`#command`, `#project`, etc.)
- Sempre incluir tag de tecnologia relevante

**📝 FORMATO:**
- Tags sempre em lowercase
- Usar hífen para palavras compostas: `#react-native`
- Máximo 5 tags por entidade

---

## 📝 **TEMPLATES DE INSERÇÃO**

### **1️⃣ TEMPLATE COMANDO**

```json
{
  "name": "cmd-[nome-comando]",
  "entityType": "comando",
  "observations": [
    "FUNÇÃO: [descrição clara do que faz]",
    "TRIGGER: [como ativar o comando]", 
    "PROTOCOLO: [passos de execução numerados]",
    "RESULTADO: [o que esperar após execução]",
    "INTEGRA: [sistemas que interage]",
    "HISTÓRICO: [quando foi usado]",
    "EXEMPLO: [exemplo prático de uso]",
    "TAGS: #comando #zoe #[categoria-específica]"
  ]
}
```

### **2️⃣ TEMPLATE PROJETO**

```json
{
  "name": "proj-[nome-projeto]",
  "entityType": "projeto",
  "observations": [
    "DESCRIÇÃO: [objetivo do projeto]",
    "STACK: [tecnologias utilizadas]",
    "STATUS: [estado atual]",
    "ARQUITETURA: [padrões arquiteturais]",
    "COMPONENTES: [principais componentes]",
    "HISTÓRICO: [marcos importantes]",
    "PRÓXIMOS: [próximas ações]",
    "TAGS: #projeto #[stack-principal] #[status]"
  ]
}
```

### **3️⃣ TEMPLATE PROBLEMA/SOLUÇÃO**

```json
{
  "name": "issue-[tipo-problema]",
  "entityType": "problema",
  "observations": [
    "PROBLEMA: [descrição detalhada]",
    "CONTEXTO: [quando acontece]",
    "SINTOMAS: [como identificar]",
    "CAUSA: [origem do problema]",
    "SOLUÇÃO: [passo a passo da correção]",
    "TESTADO: [confirmação de funcionamento]",
    "PREVENÇÃO: [como evitar no futuro]",
    "TAGS: #problema #[tecnologia] #[tipo]"
  ]
}
```

### **4️⃣ TEMPLATE TECNOLOGIA**

```json
{
  "name": "tech-[nome-tecnologia]",
  "entityType": "tecnologia",
  "observations": [
    "DESCRIÇÃO: [o que é e para que serve]",
    "VERSÃO: [versão em uso]",
    "CONFIGURAÇÃO: [como configurar]",
    "PADRÕES: [convenções estabelecidas]",
    "INTEGRAÇÃO: [com outras tecnologias]",
    "PROBLEMAS: [issues conhecidos]",
    "RECURSOS: [links e documentação]",
    "TAGS: #tecnologia #[categoria] #[status]"
  ]
}
```

### **5️⃣ TEMPLATE PADRÃO**

```json
{
  "name": "pattern-[nome-padrão]",
  "entityType": "padrão",
  "observations": [
    "DESCRIÇÃO: [o que é o padrão]",
    "APLICAÇÃO: [onde usar]",
    "REGRAS: [regras de implementação]",
    "EXEMPLO: [exemplo prático]",
    "BENEFÍCIOS: [vantagens de usar]",
    "EXCEÇÕES: [quando não usar]",
    "RELACIONADO: [padrões relacionados]",
    "TAGS: #padrão #[tecnologia] #[tipo]"
  ]
}
```

---

## 🔍 **ESTRATÉGIAS DE BUSCA**

### **1️⃣ BUSCA POR NÍVEIS**

```
NÍVEL 1 - EXATA:           "cmd-zoe-iniciar"
NÍVEL 2 - CATEGORIA:       "cmd-" (todos os comandos)  
NÍVEL 3 - TAGS:            "#comando #zoe"
NÍVEL 4 - TERMO PARCIAL:   "iniciar sistema"
NÍVEL 5 - RELACIONADOS:    "comandos inicialização"
```

### **2️⃣ QUERIES INTELIGENTES**

**🎯 COMANDOS ÚTEIS:**
```
Comando específico:     "cmd-zoe-iniciar"
Todos comandos Zoe:     "#comando #zoe"
Problemas React:        "#problema #react"
Soluções testadas:      "#solução #testado"
Projetos ativos:        "#projeto #ativo"
Preferências Math:      "#math #preferência"
Stack específica:       "#react #typescript"
```

### **3️⃣ BUSCA COMBINADA**

**🔗 RELACIONAMENTOS:**
```
Tecnologia + Problema:   "#react #problema"
Comando + Resultado:     "#comando #funcional"
Projeto + Status:        "#projeto #concluído"
Padrão + Aplicação:      "#padrão #obrigatório"
```

---

## 🚀 **SISTEMA DE RELACIONAMENTOS**

### **1️⃣ TIPOS DE RELAÇÕES**

| Relação | Descrição | Exemplo |
|---------|-----------|---------|
| `executa` | A executa B | `cmd-zoe-iniciar` executa `cmd-context-checker` |
| `usa` | A usa tecnologia B | `proj-kess-system` usa `tech-react` |
| `resolve` | A resolve problema B | `fix-expo-config` resolve `issue-expo-build` |
| `implementa` | A implementa padrão B | `proj-code-evolution` implementa `pattern-kebab-case` |
| `depende` | A depende de B | `cmd-criar-componente` depende `rule-templates` |

### **2️⃣ GRUPOS TEMÁTICOS**

**🎯 EXEMPLO - DESENVOLVIMENTO REACT:**
```
tech-react-native
├── pattern-component-structure
├── cmd-criar-componente  
├── issue-expo-build
├── fix-dependencies
└── proj-code-evolution
```

---

## ⚙️ **REGRAS DE MANUTENÇÃO**

### **1️⃣ QUANDO ATUALIZAR**

- ✅ **Novo comando executado** → Criar entidade `cmd-`
- ✅ **Problema identificado** → Criar entidade `issue-`
- ✅ **Solução encontrada** → Criar entidade `fix-`
- ✅ **Padrão estabelecido** → Criar entidade `pattern-`
- ✅ **Projeto iniciado** → Criar entidade `proj-`

### **2️⃣ PROCESSO DE ATUALIZAÇÃO**

1. **Identificar categoria** adequada
2. **Aplicar template** correspondente
3. **Incluir tags** obrigatórias
4. **Criar relacionamentos** necessários
5. **Atualizar documentação** se necessário

### **3️⃣ QUALIDADE DOS DADOS**

**✅ CHECKLIST:**
- [ ] Nome segue convenção de prefixo
- [ ] Pelo menos 2 tags incluídas
- [ ] Template aplicado corretamente
- [ ] Informações completas e precisas
- [ ] Relacionamentos criados

---

## 📊 **MÉTRICAS E MONITORAMENTO**

### **1️⃣ ESTATÍSTICAS IMPORTANTES**

- **Total de entidades** por categoria
- **Comandos mais utilizados**  
- **Problemas mais frequentes**
- **Soluções mais eficazes**
- **Projetos mais ativos**

### **2️⃣ INDICADORES DE QUALIDADE**

- **Taxa de busca bem-sucedida** (meta: >95%)
- **Tempo médio de localização** (meta: <10s)
- **Completude de informações** (meta: 100%)
- **Atualização de entidades** (meta: diária)

---

## 🔄 **CHANGELOG**

### **v1.0 - 11/06/2025**
- ✅ Sistema inicial criado
- ✅ Taxonomia de 8 categorias definida
- ✅ 5 templates padronizados criados
- ✅ Sistema de tags implementado
- ✅ Estratégias de busca documentadas
- ✅ Relacionamentos inteligentes definidos

---

## 📞 **SUPORTE**

**🤖 Sistema Gerenciado por:** Zoe System  
**👤 Solicitado por:** Math  
**📅 Criado em:** 11 de junho de 2025  
**🔄 Atualização automática:** A cada alteração no sistema 