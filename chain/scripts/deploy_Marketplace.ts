import { ethers } from "hardhat"

async function main() {
  const BadgeToken = await ethers.getContractFactory("Marketplace")
  console.log('Deploying Marketplace contract...')
  const token = await BadgeToken.deploy()

  await token.deployed()
  console.log("Marketplace deployed to:", token.address)
}

main().catch((error) => {
  console.error(error)
  process.exitCode = 1
})