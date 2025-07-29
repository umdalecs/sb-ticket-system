import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
  const { searchParams } = new URL(request.url);
  const { hashed_token } = searchParams.get("hashed_token");

  const supabase = getSupabaseCookiesUtilClient();

  const { error } = supabase.auth.verifyOtp({
    type: "magiclink",
    token_hash: hashed_token,
  });

  if (error) {
    return NextResponse.redirect(
      buildUrl("/error?type=invalid_magiclink", params.tenant, request)
    );
  }
  if (searchParams.get("type") === "recovery") {
    return NextResponse.redirect(
      buildUrl("/tickets/change-password", params.tenant, request)
    );
  }
  return NextResponse.redirect(buildUrl("/tickets", params.tenant, request));
}
