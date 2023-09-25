---
to: <%=package%>/package.json
after: "lint"
inject: true
---
    "prettier": "npx prettier --write .",