import React from "react";
import { Link } from "react-router-dom";

const AnimationPage = () => (
  <section>
    <h1>Animation</h1>
    <p>This is the dashboard.</p>
    <Link to="/posts" className="button">
      View Posts
    </Link>
  </section>
);

export default AnimationPage;
