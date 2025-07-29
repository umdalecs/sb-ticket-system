import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function POST(request, { params }) {
  const { tenant } = await params;
  const formData = await request.formData();
  const email = formData.get("email");
  const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";

  const tenantUrl = (url) => buildUrl(url, tenant, request);

  const supabaseAdmin = getSupabaseAdminClient();

  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink(
    {
      email,
      type,
    }
  );

  if (error) {
    console.log(error);
    return NextResponse.redirect(tenantUrl(`/error?type=${type}`), {
      status: 302,
    });
  }

  const { hashed_token } = linkData.properties;

  const constructedLink = tenantUrl(
    `/auth/verify?hashed_token=${hashed_token}&type=${type}`
  );

  const transporter = nodemailer.createTransport({
    host: "localhost",
    port: 54325,
  });

  await transporter.sendMail({
    from: "Your Company <your@email.whatever>",
    to: email,
    subject: "Magic Link",
    html: `
    <h1>hi there, this is a custom magic link email!</h1> 
    <p>Click <a href="${constructedLink.toString()}">here</a> to log 
    in.</p>
    `,
  });

  const thanksUrl = tenantUrl(`/magic-thanks?type=${type}`);
  return NextResponse.redirect(thanksUrl, 302);
}
