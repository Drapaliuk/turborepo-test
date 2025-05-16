import Image, { type ImageProps } from "next/image";
import { Card } from "@repo/ui/card";
import styles from "./page.module.css";

type Props = Omit<ImageProps, "src"> & {
  srcLight: string;
  srcDark: string;
};


export default function Home() {
  return <Card title="Web app" children="" href=""/>
}
