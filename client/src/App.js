import { Switch, Route } from "react-router-dom";
import { Container } from "semantic-ui-react";
import Navbar from "./components/NavBar";
import AppointmentForm from "./pages/AppointmentForm";
import Appointments from "./pages/Appointments";


function App() {
  return (
    <>
      <Navbar />
      <Container>
        <Switch>
          <Route exact path="/appointments" component={Appointments} />
          <Route exact path="/appointments/new" component={AppointmentForm} />
          <Route
            exact
            path="/appointments/edit/:id"
            component={AppointmentForm}
          />
        </Switch>
      </Container>
    </>
  );
}

export default App;
