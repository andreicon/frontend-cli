---
to: <%=package%>/src/constants/apiBaseUrls.ts
---
export default {
    prod: {
        app: '',
        pimcore: 'https://wolf.eu',
    },
    staging: {
        app: '',
        pimcore: 'https://stage.main.de.wolf.eu/',
    },
    test: {
        app: '',
        pimcore: 'https://test.main.de.wolf.eu',
    }
} as { [key: string]: { app: string; pimcore: string; }}
