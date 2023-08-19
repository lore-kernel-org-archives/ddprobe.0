Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757ED360
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4AFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692406448;
	bh=EOks3zjMude/XWxIFnPUn/eY1k58YEKas2uZ4W1lXIc=;
	h=To:Subject:From:Date:From;
	b=jpAhEXOZJZPwC13qf32NZ5uVEk3qwSBMye3w1XdFZfvYs72E2/m5WV7UMFIjtt+vm
	 aKV32E4Lq8vHv5FCD5rdhwE2PTASGwvqRg6amtWRHgR3Rn8Z/F0w6aTq6c5e2btDpS
	 f0K3zB/jpdQfH+inPtomxAKsTYvOZV34hJy95FCJpWKLRWh+tQ/qBWqWy9qvThZq7j
	 hZDUtRxYtu7s2xHCzwG0hBhqz5SoNTGMisjHcK9IpP8BOGKSlnBUuvTwsa9JLmQ9I1
	 NPAD/FG5MOxgc+1BIxSJriRsN+PMQVT53UVwAZ0aGYUwGLndE0e/H52RfbJHZA4KIB
	 0SGTzE4ndqSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28AEE49A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240644869.9847.2418073788371332382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47021cfa502d6aac6008b47f8d873ead6466436cb05ea3d8162698025861daf1
Date: Sat, 19 Aug 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692406448
