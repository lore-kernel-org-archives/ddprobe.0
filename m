Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3CDBE7F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B7C433C9
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690377128;
	bh=nIMQCg37KX1+ZfnhnNLZ6VpBc8LmM+OKtJGlxtUnlUY=;
	h=To:Subject:From:Date:From;
	b=spn15Exg7W8C5obmCqsJ8xZMIhBqJrSxUV2DL/BrwUgLTZjSB5f1g09BUM9DTK3F/
	 Eb5nFy6M5VyT3kdIJgzMD+5V0vXKYgX2lUUofKPJR+1+/MwHWezzxFwCFuLuLkk2w3
	 gvxRujU6kEh9HMETIV3+Vvm6NFsuTxDxlYDmTx/e1FalrJA0WFc2X2SZIuNDm9GLPp
	 yLW14yNm5n0yOskKgdiRlgiEEP3dxfiEDdn9fCFXG9ivmVGrMjK1Beg0YRUJzIeGqI
	 C7M+P69N5x/gC9e546YN8ki+f7yFAdbC98slCt3zrXe5PdwssHqDSInEwSFzOZ09HM
	 8hEh92Zd5LSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DB0C001B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169037712871.20671.2248385815581450164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65104cf0afa715c86f5891449668a9688b21442c0afce8a940401db1c769fa9a
Date: Wed, 26 Jul 2023 13:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690377128
