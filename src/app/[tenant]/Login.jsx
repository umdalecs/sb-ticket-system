"use client";
import Link from "next/link";
import { useEffect, useRef } from "react";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ isPasswordLogin, tenant, tenantName }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);

  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        router.push(urlPath("/tickets", tenant));
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      action={
        isPasswordLogin
          ? urlPath("/auth/pw-login", tenant)
          : urlPath("/auth/magic-link", tenant)
      }
      method="POST"
      onSubmit={(event) => {
        isPasswordLogin && event.preventDefault();
        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              !result.data?.user && alert("Could not sign in");
            });
        }
      }}
    >
      <article style={{ maxWidth: "420px", margin: "auto" }}>
        <header>
          Login
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>
        <fieldset>
          <label htmlFor="email">
            Email
            <input
              type="email"
              id="email"
              name="email"
              ref={emailInputRef}
              required
            />
          </label>
          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input
                type="password"
                id="password"
                name="password"
                ref={passwordInputRef}
              />
            </label>
          )}
        </fieldset>

        <p>
          {isPasswordLogin ? (
            <Link
              href={{
                pathname: urlPath("/", tenant),
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: urlPath("/", tenant),
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
        </p>

        <button type="submit">
          Sign in with {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
