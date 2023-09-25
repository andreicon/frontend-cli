---
to: <%=package%>/src/views/Home.tsx
---
import { Add, LogoColored } from "assets/icons";

function Home() {
    return (
        <>
        <LogoColored />
        <p>Welcome to Wolf!</p>
        <Add width={35} color="red"/>
        </>
    );
}

export default Home;