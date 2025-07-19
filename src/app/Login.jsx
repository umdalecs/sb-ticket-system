"use client";
import Link from "next/link";
import { useEffect, useRef } from "react";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";

export const Login = ({ isPasswordLogin }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);

  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        router.push("/tickets");
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      action={isPasswordLogin ? "/auth/pw-login" : "auth/magic-link"}
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
        <header>Login</header>
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
            <Link href={{ pathname: "/", query: { magicLink: "yes" } }}>
              Go to Magic Link Login
            </Link>
          ) : (
            <Link href={{ pathname: "/", query: { magicLink: "no" } }}>
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
