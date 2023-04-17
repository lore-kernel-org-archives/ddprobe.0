Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213598BEB
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE323C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681762145;
	bh=kJksbucOGi/4ule8kndbyMnrkXjwBuv0fPjoCgW0fpY=;
	h=To:Subject:From:Date:From;
	b=KqQcyUT3uhMaxVMJR5f+NVz2K5pCJdGc/Ib4TFg+2B3Ybnv/Mu8V0guPNawd6arvg
	 folNpDXcMDEPTjPe3weXnPke2BXRvD7MXnePLt4oiMoqhQc21BhQc9PfKzUxUzpLqp
	 oN8afZNS4qdACs6J64hlHohcD0H+uy9+JwgAEcB8mclJWgaBbUiI/z4Pkbp4Vln7zK
	 ObaKWGLTr3S+ynUkOmwdrZAwaJc1G0cj7yRcZmm8scmDpBD1KkM10qEZ6++KRvtzy9
	 T5Uczp2SOP39m1Rr61oRmquv04LR5+nl3CKnDYvomWy2w1XIqLd90XeVruiZub3bGm
	 190VPO9KAoaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D42C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176214573.21060.6428425656829654993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe249d790b6998fad79a138ebd17e6452a93b092112cd7598e7104afb2066ee
Date: Mon, 17 Apr 2023 20:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681762145
