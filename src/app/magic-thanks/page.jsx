import Link from "next/link";
import React from "react";

const page = () => {
  return (
    <div style={{ textAlign: "center" }}>
      <h1>Magic on its way!</h1>
      Thanks! You should get a link to login in a few seconds.
      <br />
      <br />
      <Link role="button" href="/">
        Go back.
      </Link>
    </div>
  );
};

export default page;
