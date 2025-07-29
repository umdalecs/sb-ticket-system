import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
import { use } from "react";

const page = ({ searchParams, params }) => {
  const { type } = use(searchParams);
  const { tenant } = use(params);
  const knownErrors = ["login-failed", "magiclink", "invalid_magiclink"];
  return (
    <div style={{ textAlign: "center" }}>
      <h1>Ooops!</h1>
      {type === "login-failed" && (
        <strong>Login was not successful, sorry.</strong>
      )}
      {type === "magiclink" && (
        <strong>
          Could not send a magic link. Maybe you had a typo in your E-Mail?
        </strong>
      )}
      {!knownErrors.includes(type) && (
        <strong>
          Something went wrong. Please try again or contact support.
        </strong>
      )}
      {type === "invalid_magiclink" && (
        <strong>
          The magic link was invalid. Maybe it expired? Please request a new
          one.
        </strong>
      )}
      <br />
      <br />

      <Link role="button" href={urlPath("/", tenant)}>
        Go back.
      </Link>
    </div>
  );
};

export default page;
