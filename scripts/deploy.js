const {ethers} = require("hardhat");

(async () => {
    const factory = await ethers.getContractFactory("Counter");
    const payments = await factory.deploy();

    await payments.waitForDeployment();

    console.log("Counter deployed to:", await payments.getAddress());
})().catch((error) => {
    console.error(error);
    process.exitCode = -1;
});