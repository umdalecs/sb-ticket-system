import React from "react";
import { TenantName } from "./TenantName";
import { Nav } from "./Nav";

export const layout = ({ children }) => {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName="Packt" />
        <Nav />
      </section>
      <section>{children}</section>
    </>
  );
};

export default layout;