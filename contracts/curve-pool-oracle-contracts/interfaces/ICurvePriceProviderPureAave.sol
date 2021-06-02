// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {IPriceOracleGetter} from '../interfaces/IPriceOracleGetter.sol';

interface ICurvePriceProviderPureAave {
  function getTokensMinPrice() external view returns (address, uint256);

  function latestAnswer() external view returns (int256);

  function getAaveOracle() external pure returns (IPriceOracleGetter);

  function getToken() external pure returns (address);

  function getPlatformId() external pure returns (uint256);

  function getSubTokens() external pure returns (address[3] memory);
}