
// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts v4.4.1 (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)

pragma solidity ^0.8.0;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: HASH2.sol

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;





contract HASH is Ownable {
    using SafeMath for uint256;

    enum BettorType {
        Big,            // ???  0
        Small,          // ???
        Single,         // ???
        Double,         // ???
        SmallSingle,    // ??????
        SmallDouble,    // ??????
        BigSingle,      // ??????
        BigDouble,      // ??????
        Dragon,         // ???
        Tiger,          // ???
        Combine,        // ???
        BaccaratBanker, // ???????????????
        BaccaratIdle,   // ???????????????
        BaccaratSame    // ??????????????? 13
    }

    IERC20 public betteToken;        // ?????? Token
    uint256 public gameBlock;            // ???????????????????????????????????? 30???????????????
    uint256 public hgmGlobalId;          // ??????????????????Id, ??? 1 ????????????, ????????????????????????

    uint256 public startBlock;           // ????????????
    uint256 public endBlock;             // ????????????
    bool private isEnding = false;

    //??????????????????
    struct WinningResult {
        uint256  startBlock;           // ????????????
        uint256  endBlock;             // ????????????
        bool    hasReward;              // ????????????
        uint[]  numberList;            // ??????????????????
        uint    sumResult;             //??????????????????
        uint    bankerNumber;            // ????????????
        uint    idleNumber;              // ????????????
        uint256 totalBetted;             // ?????????????????????
        uint256 totalReward;             // ?????????????????????
    }

    //????????????
    struct GuessBettor {
        address account;
        uint    index;        //???????????????????????????
        uint256 value;        // ???????????? >= 10U
        uint256 hgmId;        // ????????????
        uint8   betType;      // ????????????
        bool    isReward;     // ????????????
        uint256 reWardVale;   // ?????????????????????????????? 0
    }

    //????????????
    struct userInfo {
        uint256 rewardBalance;     // ?????????????????????
        uint256 totalReward;       // ???????????????????????????
        uint256 totalBetted;       // ???????????????????????????
    }

    // ????????????
    event GuessBettorCreate(
        address account,
        uint256 value,
        uint16 betType,
        uint256 hgmId,
        uint256 index
    );

    mapping (uint => GuessBettor[]) public guessListMap;   // ??????????????????
    mapping (uint => WinningResult) public WinningMap;          // ????????????
    mapping (address => mapping (uint256 => GuessBettor[])) public usersGuessListMap;   // ????????????
    mapping (address => userInfo) public userInfoList;     // ??????????????????


    constructor(address bettorToken_) {
        gameBlock = 30;
        hgmGlobalId = 0;
        betteToken = IERC20(bettorToken_);
    }

    // ????????????????????????????????????
    function setGameBlock(uint256 _block) public onlyOwner {
         gameBlock = _block;
    }

    // ???????????? Token ?????????
    function setBetteToken(address _address) public onlyOwner {
        betteToken = IERC20(_address);
    }

    // ?????????????????????betteToken??????
    function getTokenBalance(address _address) public view returns (uint256) {
        return betteToken.balanceOf(_address);
    }

    // ??????
    function createBettor(uint256 _amount, uint8 _betType) public returns (bool) {
        // ??????????????????????????????
        require(_betType >= uint8(BettorType.Big) && _betType <= uint8(BettorType.BaccaratSame), "createBettor: invalid bettor type, please bette repeat");
        // ?????????????????? 10U
        require(_amount >= 10000000, "createBettor: bette amount must more than 10U");
        // ????????????????????????????????????
        require(betteToken.balanceOf(msg.sender) >= _amount, "createBettor: bettor account balance not enough");

        if (block.number > endBlock) {
            //?????????????????????
            endHashGame();
        }
        GuessBettor memory gb = GuessBettor({
            account: msg.sender,
            index: (usersGuessListMap[msg.sender][hgmGlobalId]).length,
            value: _amount,
            hgmId: hgmGlobalId,
            betType: _betType,
            isReward: false,
            reWardVale: 0
        });
        //??????????????????
        guessListMap[hgmGlobalId].push(gb);
        //??????????????????
        userInfo storage user = userInfoList[msg.sender];
        user.totalBetted = user.totalBetted + _amount;
        //??????????????????
        usersGuessListMap[msg.sender][hgmGlobalId].push(gb);
        //??????????????????
        WinningResult storage currentWinningResult = WinningMap[hgmGlobalId];
        currentWinningResult.totalBetted = currentWinningResult.totalBetted + _amount;
        emit GuessBettorCreate(msg.sender, _amount, _betType, hgmGlobalId, gb.index);
        require(betteToken.transferFrom(msg.sender, address(this), _amount));
        return true;
    }

    // ????????????
    function startHashGame() public onlyOwner {
            // ????????????????????????????????????
            require(startBlock == 0, "only startHashGame when startBlock = 0");
            startBlock = block.number;
            // ???????????????
            endBlock = startBlock + gameBlock;
            // ???????????? ID
            hgmGlobalId = hgmGlobalId + 1;
    }

        // ????????????
    function endHashGame() public {
        require(!isEnding);
        require(block.number > endBlock, "endHashGame: game is not over");
        isEnding = true;
        WinningResult storage w = WinningMap[hgmGlobalId];
        w.startBlock = startBlock;
        w.endBlock = endBlock;
        w.bankerNumber = createRandomByDifficulty(100);
        w.idleNumber = createRandomByGaslimit(100);
        uint secodNo = createRandomByDifficulty(9);
        uint thirdNo = createRandomByGaslimit(9);
        uint firstNo = createRandomByBlock(9);

        w.numberList.push(firstNo);
        w.numberList.push(secodNo);
        w.numberList.push(thirdNo);

        for(uint i = 0; i < w.numberList.length; i++){
            w.sumResult = w.sumResult + w.numberList[i];
        }
        updateReward();
        w.hasReward = true;
        hgmGlobalId = hgmGlobalId + 1;
        isEnding = false;
    }

    // ??????????????????
    function updateRewardLists(address _account, uint256 _hgmId, uint256 _bettotIndex, uint256 _reWardVale) private {
        userInfo storage user = userInfoList[_account];
        WinningResult storage wr = WinningMap[hgmGlobalId];
        user.rewardBalance = user.rewardBalance + _reWardVale;
        user.totalReward = user.totalReward + _reWardVale;
        wr.totalReward = wr.totalReward + _reWardVale;
        GuessBettor storage bettorInfo = usersGuessListMap[_account][_hgmId][_bettotIndex];
        bettorInfo.isReward = true;
        bettorInfo.reWardVale = _reWardVale;
    }

// ?????????????????????
    function updateReward() private  {
        uint256 GuessBettorNums = (guessListMap[hgmGlobalId]).length;
        for(uint256 i = 0; i < GuessBettorNums; i++) {
            GuessBettor storage gb = guessListMap[hgmGlobalId][i];
            WinningResult memory wr = WinningMap[hgmGlobalId];
            if (gb.betType == uint8(BettorType.Big) && (wr.sumResult >= 14 && wr.sumResult <= 27)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(195).div(100);
                gb.reWardVale = _reWardVale; // 1.95
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Small) && (wr.sumResult >= 0 && wr.sumResult <= 13)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(195).div(100);
                gb.reWardVale = _reWardVale; // 1.95
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Single) && wr.sumResult % 2 == 1) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(195).div(100);
                gb.reWardVale = _reWardVale; // 1.95
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Double) && wr.sumResult % 2 == 0) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(195).div(100);
                gb.reWardVale = _reWardVale; // 1.95
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.SmallSingle) && wr.sumResult % 2 == 1 && (wr.sumResult >= 0 && wr.sumResult <= 13)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(195).div(100);
                gb.reWardVale = _reWardVale; // 4.87
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.SmallDouble) && wr.sumResult % 2 == 0 && (wr.sumResult >= 0 && wr.sumResult <= 13)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(325).div(100);
                gb.reWardVale = _reWardVale; // 3.25
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.BigSingle) && wr.sumResult % 2 == 1 && (wr.sumResult >= 14 && wr.sumResult <= 27)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(325).div(100); // 3.25;
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.BigDouble)  && wr.sumResult % 2 == 0 && (wr.sumResult >= 14 && wr.sumResult <= 27)) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(487).div(100);
                gb.reWardVale = _reWardVale; // 4.87
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Dragon) && wr.numberList[0] > wr.numberList[2]) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(200).div(100); // 2
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Tiger) && wr.numberList[0] < wr.numberList[2]) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(200).div(100); // 2
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.Combine) && wr.numberList[0] == wr.numberList[2]) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(800).div(100); // 8
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.BaccaratBanker) && wr.bankerNumber > wr.idleNumber) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(200).div(100); // 2
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.BaccaratIdle) && wr.bankerNumber < wr.idleNumber) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(200).div(100); // 2
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
            if (gb.betType == uint8(BettorType.BaccaratSame)  && wr.bankerNumber == wr.idleNumber) {
                gb.isReward = true;
                uint256 _reWardVale = gb.value.mul(800).div(100); // 8
                gb.reWardVale = _reWardVale;
                updateRewardLists(gb.account, gb.hgmId, gb.index, _reWardVale);
                continue;
            }
        }
    }

    // ?????????????????????????????????
    function createRandomByDifficulty(uint _percent) private view returns(uint) {
        uint randFactor = uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % _percent;
        bytes32 randomKk = keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender, randFactor));
        uint random = uint(randomKk) % _percent;
        return random;
    }

    // ???????????? gaslimit ??????????????????
    function createRandomByGaslimit(uint _percent) private view returns(uint) {
        uint randFactor = uint(keccak256(abi.encodePacked(block.timestamp, block.gaslimit, msg.sender))) % _percent;
        bytes32 randomKk = keccak256(abi.encodePacked(block.timestamp, block.gaslimit, msg.sender, randFactor));
        uint random = uint(randomKk) % _percent;
        return random;
    }

    // ?????????????????????????????????
    function createRandomByBlock(uint _percent) private view returns(uint) {
        uint randFactor = uint(keccak256(abi.encodePacked(block.timestamp, block.number, msg.sender))) % _percent;
        bytes32 randomKk = keccak256(abi.encodePacked(block.timestamp, block.number, msg.sender, randFactor));
        uint random = uint(randomKk) % _percent;
        return random;
    }

    // ????????????????????????
    function getWinningResultNumlist(uint256 _hgmId) public view returns (uint[] memory) {
        return WinningMap[_hgmId].numberList;
    }

    // ??????????????????????????????
    function withdrawReward() public  {
        uint256  userRewardBalance = userInfoList[msg.sender].rewardBalance;
        require(userRewardBalance > 0, "user's balance is 0");
        userInfoList[msg.sender].rewardBalance = 0;
        require(betteToken.transfer(msg.sender, userRewardBalance));
    }

}
