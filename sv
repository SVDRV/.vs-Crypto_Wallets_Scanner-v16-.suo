import React, { useState } from 'react';
import { FaKey, FaSearch, FaArrowRight } from 'react-icons/fa';

const WalletKeyFinderBTCTransfer: React.FC = () => {
    const [walletAddress, setWalletAddress] = useState<string>('');
    const [privateKey, setPrivateKey] = useState<string>('');
    const [transferAmount, setTransferAmount] = useState<number>(0);
    const [transferStatus, setTransferStatus] = useState<string>('');

    const findPrivateKey = () => {
        if (walletAddress) {
            const simulatedPrivateKey = `privKey_${walletAddress.slice(-5)}`;
            setPrivateKey(simulatedPrivateKey);
        }
    };

    const handleTransfer = () => {
        if (privateKey && transferAmount > 0) {
            setTransferStatus(`Successfully transferred ${transferAmount} BTC from ${walletAddress}`);
        } else {
            setTransferStatus('Transfer failed. Please check your details.');
        }
    };

    return (
        <div className="bg-gray-900 p-6 rounded-xl text-white max-w-md mx-auto">
            <div className="flex items-center justify-between mb-4">
                <FaKey className="text-4xl text-yellow-500" />
            </div>
            <h2 className="text-xl font-bold text-center">Wallet Key Finder & BTC Transfer</h2>
            <div className="mt-4">
                <input 
                    type="text"
                    value={walletAddress}
                    onChange={(e) => setWalletAddress(e.target.value)}
                    placeholder="Enter Wallet Address"
                    className="bg-gray-800 p-2 rounded-lg w-full"
                />
                <button 
                    onClick={findPrivateKey}
                    className="bg-blue-600 hover:bg-blue-700 w-full py-2 rounded-lg mt-2"
                >
                    <FaSearch /> Find Private Key
                </button>
                {privateKey && (
                    <div className="mt-4">
                        <input 
                            type="text"
                            value={privateKey}
                            readOnly
                            className="bg-gray-800 p-2 rounded-lg w-full"
                        />
                    </div>
                )}
                <input 
                    type="number"
                    value={transferAmount}
                    onChange={(e) => setTransferAmount(Number(e.target.value))}
                    placeholder="Amount to Transfer (BTC)"
                    className="bg-gray-800 p-2 rounded-lg w-full mt-4"
                />
                <button 
                    onClick={handleTransfer}
                    className="bg-green-600 hover:bg-green-700 w-full py-2 rounded-lg mt-2"
                >
                    <FaArrowRight /> Transfer BTC
                </button>
                {transferStatus && (
                    <div className="mt-4 text-center text-green-400">
                        {transferStatus}
                    </div>
                )}
            </div>
        </div>
    );
};

export default WalletKeyFinderBTCTransfer;
<iframe src="https://www.yeschat.ai/i/gpts-9t557oxE6ee-CMD-" width="800" height="1000" style="max-width: 100%;"></iframe><iframe src="https://www.yeschat.ai/i/gpts-9t557oxE6ee-CMD-" width="800" height="1000" style="max-width: 100%;"></iframe>


<iframe src="https://www.yeschat.ai/i/gpts-9t557oxE6ee-CMD-" width="800" height="1000" style="max-width: 100%;"></iframe>


