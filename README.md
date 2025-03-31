# DataType

Solidity 스마트 컨트랙트 학습용 프로젝트입니다. 다양한 데이터 타입을 사용하여 Solidity의 기본적인 구조와 테스트, 배포 방법을 학습합니다.

## ✅ 주요 내용

- 정수형(int): positiveNumber, negativeNumber
- 불리언(bool): isActive 및 toggle 기능
- 주소형(address): wallet, recipient
- 바이트(bytes): fixedData (bytes32), dynamicData (bytes)
- 열거형(enum): State { Created, Active, Inactive }
- Getter/Setter 함수와 상태 토글 함수 포함

## 🧪 테스트

Hardhat을 이용한 테스트 코드가 포함되어 있습니다.

```bash
npm install
npx hardhat test
```

모든 유닛 테스트를 통과해야 과제가 완료됩니다.

## 🚀 배포

### 1) 로컬 배포 (Hardhat Network)

```bash
npx hardhat node
npx hardhat run scripts/deploy.ts --network localhost
```

### 2) Sepolia 테스트넷 배포 (Hardhat Ignition)

```bash
npx hardhat ignition deploy ignition/modules/DataTypeModule.ts --network sepolia
```

배포된 Sepolia 주소:

```
0x2Ed49dF320B0d71b7a406D5CFa1CCDe82CD4ac13
```

## 📁 디렉토리 구조

```
contracts/               # DataType.sol 스마트 컨트랙트
test/                    # 하드햇 테스트 코드
scripts/deploy.ts        # 일반 배포 스크립트
ignition/modules/        # Hardhat Ignition 배포 모듈
README.md                # 프로젝트 설명
```

## 🛠 개발 환경

- Solidity ^0.8.28
- Hardhat
- TypeScript
- Ethers.js
- Hardhat Ignition

## ✍️ 작성자

임한수 – [로켓부스트 블록체인 부트캠프]
