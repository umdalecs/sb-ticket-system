import { Login } from "./Login";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { notFound } from "next/navigation";

export default async function Home({ searchParams, params }) {
  const { tenant } = await params;
  const { magicLink } = await searchParams;
  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) {
    notFound();
  }

  const { name: tenantName } = data;

  const wantsMagicLink = magicLink === "yes";

  return (
    <Login
      isPasswordLogin={!wantsMagicLink}
      tenantName={tenantName}
      tenant={tenant}
    />
  );
}
