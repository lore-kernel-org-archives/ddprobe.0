Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D266C2571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8173DC433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670779287;
	bh=qsnYxsRE7RiMsODClW4dAePk30pRkm0nrRJS1btOFK4=;
	h=To:Subject:From:Date:From;
	b=ER9THYF75G1r6Rmvhbo+15240i13xlg5ZdcnHVwEYK34KV3w7A//ptAoSuzErvcZA
	 hzVmuntTP7k4McItOmceXupN7xSyltjm75q2AC7QcLZGuPD+WP9wEU4SebbVXqtOeE
	 oO2r+BYnvxaDFKhqpOtBIxv/iTDJXD21Kq8tZP8anIW9Y73KkDGpuPBb8mF+6D3jvF
	 T5M7b/pTkyWEnqRJgSGL2Fejvpj+V2uXQjavAMyLLipLz1P0Ckd1l6zohJBo5QVoyi
	 W2Wt0LpCJD94VGh82KJYa4sntqSa1l0Tl8AjtqXId8/b/EiAF+EykhG+DZ3YmYwtyC
	 qqgCVJx0OeE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67444C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077928739.20424.14461692335404400285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06eab7cd7f10f7f085e6e5885f3b5e0a67a6e560b1de9212ecaf1ec5e8fdde49
Date: Sun, 11 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670779287
