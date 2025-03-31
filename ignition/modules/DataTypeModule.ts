import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const DataTypeModule = buildModule("DataTypeModule", (m) => {
  const recipient = m.getAccount(0);
  const dataType = m.contract("DataType", [recipient]);

  return { dataType };
});

export default DataTypeModule;
