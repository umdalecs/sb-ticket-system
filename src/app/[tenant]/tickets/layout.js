import { TenantName } from "./TenantName";
import { Nav } from "./Nav";

export default async function Layout({ children, params }) {
  const { tenant } = await params;
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName="Packt" />
        <Nav tenant={tenant} />
      </section>
      <section>{children}</section>
    </>
  );
}
