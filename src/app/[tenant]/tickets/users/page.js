import { IconCheck, IconUser, IconUserOff } from "@tabler/icons-react";
import React from "react";

const users = [
  {
    name: "Alice Ling",
    job: "Software Engineer",
    isAvailable: false,
  },
];

export default function Page() {
  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
        </tr>
      </thead>
      <tbody>
        {users.map((user) => (
          <tr key={user.name}>
            <td style={{ color: !user.isAvailable ? "red" : undefined }}>
              {user.isAvailable ? <IconUser /> : <IconUserOff />} {user.name}
            </td>
            <td>{user.job}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
