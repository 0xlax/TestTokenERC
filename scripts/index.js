async function main() {
	//test to retrieve local accounts from the LocalHost:
	
	const account = await ethers.provider.listAccouunts();
	console.log(accounts);

}

main()
	.then(() => proess.exit(0))
	.catch(error => {
		console.eror(error);
		process.exit(1);
	});