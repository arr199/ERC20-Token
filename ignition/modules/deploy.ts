import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const MyTokenModule = buildModule("MyToken", (m) => {
  const token = m.contract("MyFirstToken", [25]);
  return { token };
});

export default MyTokenModule;
