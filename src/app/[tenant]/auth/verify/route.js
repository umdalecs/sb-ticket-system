import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
  const { tenant } = await params;

  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get("hashed_token");
  const isRecovery = searchParams.get("type") === "recovery";

  const tenantUrl = (url) => buildUrl(url, tenant, request);
  const getRedirect = (url) => NextResponse.redirect(url);

  let verifyType = "magiclink";
  if (isRecovery) verifyType = "recovery";

  const supabase = await getSupabaseCookiesUtilClient();

  const { error } = await supabase.auth.verifyOtp({
    type: verifyType,
    token_hash: hashed_token,
  });

  if (error) {
    console.log(error);
    return getRedirect(tenantUrl("/error?type=invalid_magiclink"));
  }
  if (isRecovery) {
    return getRedirect(tenantUrl("/tickets/change-password"));
  }
  return getRedirect(tenantUrl("/tickets"));
}
