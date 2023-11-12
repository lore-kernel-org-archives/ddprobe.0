Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D317E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7f9JWI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FFE7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699753696;
	bh=K9M8N+qokTzUl3WRNHMiV88i3bPSoL1b7so0YUUCBHw=;
	h=To:Subject:From:Date:From;
	b=X7f9JWI1jFj7NHOV1yTW7cQjplOhCmG91c7Iv4BBQd3VKM1p38sIfulHpWjtoAxTc
	 Cm6C9cYD8LMem5q1yAdrht+GYe0HewgyZHuzL6pB2f32MNiM6qeD+mVejbc576u9wI
	 fYOrH4ilpYZqAlMEpa1bxuoHnnm4m5dMydAUXy73xpI0yxq7SIarXWMvy+xle7bRAZ
	 wybZf+WR9pCWzuDnA1vBqlyBB24PG/OrrnMhF8uoDiJehuX2UU8I02WAFT/p8OZQZ2
	 ZESEjgFOr4x40Bq10If4zEXGrtFMBi+ckq6oxCQtwZJPdhxSUI5NG8sDa7zcFnz4xE
	 DoxZrSD1HMmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7164EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169975369642.15227.1340461031605822224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bfc2732c4a61b615bb901b67b9fe0ebd537c6024bc6957474d3db002bcd028
Date: Sun, 12 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699753696
