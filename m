Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A80F408E7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB41FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686338225;
	bh=lyN7VfUCSJW7rI2+iPRBfcykm1z8ZwEEUa4tPLqBfDY=;
	h=To:Subject:From:Date:From;
	b=bZ576Vhs1MZMI1rQL+cFLSfAQqmbAZojGqvGjboJQ+lpKxWf3Vr7h0dNcRtOwkxCO
	 2+8pUAIGBaVwUY0PtI0tiYs5dXInJVoe4jqHfkai6n1Q6w1K+54Z2Ai3CQER1D/AYJ
	 CW90aNAefgxKTWiP3wHubwGBpPGm1lak94yLDhVL32LmH8wNdWAUb4H7qz2+VeFx6A
	 vq5ou//nul7X1oX0PeSpLrH0dyxX2bJiGTcR7cy3Ht9Y6Iz5Lc7GZ4cEDG/xsf1oEE
	 5J1cc/95tBOylbbw5rkxh9fc/tWYabieoYkdgvYxGyOC9cP1lpJI0dws8CUeTkoK1T
	 DuYpKfftvOybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06D2C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633822578.725.13106402443569596063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613f4b75b8e1a413f2d2f9764767d4654bffe2fd46ab6acda934d95cde67a34e
Date: Fri, 09 Jun 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686338225
