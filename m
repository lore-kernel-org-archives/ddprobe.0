Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F52BEC56
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744634395; cv=none; b=MqH3I6oePGfOWkld8P6S5Bs4LoCFKnjzrcHHPB7YDctnTEu7PFCHc/S3cHe3qnLkTxqO//QRh987Q/ppqhJIZrSlYz1+l9rttaWr8m6tW6DOYHq7oo0Bc+nvgyYWvvZ+GmWEeb8AZThpb9aw6L6sU1xqauS9V5RkUTSX3KwhriA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744634395; c=relaxed/simple;
	bh=rD296S1HsLSXXBxeP02ClxasNSQtwsYqnuADtD6yIfY=;
	h=To:Subject:From:Message-Id:Date; b=mdW3ca818e8eGUcCc3KYPiQ/gVSxrYd9uNSI/3sxyX+H0LaTz33DKHJnvzfzJMvdmb+VjK7M0Ar5s+f+V9daIzLrzQhmFzq2aXGvGHUUhQmxXyZ/4m+EDC7Qwi8PETZaC7SQwSWpM8uQXXHbwSuj39B8lPFa2sb4/7qEGlI4LIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtSf5ODd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtSf5ODd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744634393;
	bh=rD296S1HsLSXXBxeP02ClxasNSQtwsYqnuADtD6yIfY=;
	h=To:Subject:From:Date:From;
	b=jtSf5ODdwoWyLwQBt1k+6K68JytWWZ6MRo8AcO//ptjU34DColIc3aoWyVNzCyBFi
	 Q4kEXlmBk/LVgHNw37hOUkev2KxXzVqSElaR405pnQ4y7eonryYNm3lSm/9eUk3Hzz
	 PlD22jKjnCojGzRwQbMRbmxcQL8waML9lLnwuwt9cKMSJ+XYcSoGSoSolxg9r75AA/
	 /37/q/lKWJEtqcLEHBMGYutn8TjHhImYb51eoKLO/13xJLIVnVENcomAbCGjpgBuPV
	 zuzw+IuOjp6GmYG/Xhjt0k+CKtmXOJRfp9GU9aSFpMBrCMkGNJ+HQtM9l75V0aduOf
	 OlDGAAp58koWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A56C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463439360.23645.12827397796363608820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e164668daa95ee320e8a2dade392128d03b04fb18f7377c16fd953ef3366d4
Date: Mon, 14 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744634393
