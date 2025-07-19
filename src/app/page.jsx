"use client";
import { use } from "react";
import { Login } from "./Login";

export default function Home({ searchParams }) {
  const params = use(searchParams);
  const wantsMagicLink = params.magicLink === "yes";

  return <Login isPasswordLogin={!wantsMagicLink} />;
}
