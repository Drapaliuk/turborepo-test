// import { Button } from "@repo/ui/jack/jaggi/lenni";
import { add } from "@repo/math/add";
import styles from "./page.module.css";

export default function Home() {
  return (
    <div className={styles.page}>
      <h1>Hello Turborepo</h1>
      Result: {add(2, 2)}
      {/* <Button>Click me</Button> */}
    </div>
  );
}
