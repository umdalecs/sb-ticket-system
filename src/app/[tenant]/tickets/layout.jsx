import React, { use } from "react";
import { TenantName } from "./TenantName";
import { Nav } from "./Nav";

export const layout = ({ children, params }) => {
  const { tenant } = use(params);
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName="Packt" />
        <Nav tenant={tenant} />
      </section>
      <section>{children}</section>
    </>
  );
};

export default layout;
