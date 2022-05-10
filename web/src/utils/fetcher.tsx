import { Contract } from "@ethersproject/contracts";
import { Web3Provider } from "@ethersproject/providers";

const fetchContract = (library: Web3Provider | undefined, abi: any) => {
    return async (...args: any) => {
        if(!library) return

        const [arg1, arg2, ...params] = args
        const address = arg1
        const method = arg2
        console.log(address, method, address, abi);
        const contract = new Contract(address, abi, library)
        return await contract[method](...params)
    }
}

export default fetchContract;