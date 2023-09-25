---
to: <%=package%>/src/App.tsx
---
import { Provider } from 'react-redux';
import './App.css';
import 'scss/app.scss';
import store from 'store/index';
import Home from 'views/Home';
import { Context } from 'context/context.ts';

function App() {
    return (
        <Provider store={store}>
          <Context.Provider value={{}}>
            <Home />
          </Context.Provider>
        </Provider>
    );
}

export default App;
