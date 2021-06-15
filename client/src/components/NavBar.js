import React from "react";
import { useHistory, useLocation } from "react-router-dom";
import { Menu } from "semantic-ui-react";

const Navbar = () => {
  const history = useHistory();
  const { pathname } = useLocation();
  return (
    <Menu>
      <Menu.Item
        active={pathname === "/appointments"}
        content="Appointments"
        onClick={() => history.push("/appointments")}
      />
      <Menu.Item
        active={pathname === "/appointments/new"}
        content="New Appointment"
        onClick={() => history.push("/appointments/new")}
      />
    </Menu>
  );
};

export default Navbar;
