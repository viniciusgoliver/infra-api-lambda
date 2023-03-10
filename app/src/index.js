"use strict";

const skills = [
  "PHP",
  "JavaScript",
  "React",
  "Node",
  "Express",
  "MongoDB",
  "MySQL",
  "HTML",
];

exports.handler = async (event) => {
  return {
    statusCode: 200,
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ skills }),
  };
};
