import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function POST(request) {
  const formData = await request.formData();
  const email = formData.get("email");
  const type = formData.get("type") === "recovery" ? "recovery" : "magicLink";

  const supabaseAdmin = getSupabaseAdminClient();

  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink(
    {
      email,
      type: "magiclink",
    }
  );

  if (error) {
    return NextResponse.redirect(
      new URL("/error?type=magiclink", request.url),
      { status: 302 }
    );
  }

  const { hashed_token } = linkData.properties;

  const constructedLink = new URL(
    `/auth/verify?hashed_token=${hashed_token}&type=${type}`,
    request.url
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

  const thanksUrl = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksUrl, 302);
}
