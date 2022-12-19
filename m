Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4475A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869D0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671416487;
	bh=Qz+0rIKVd+uY22rYHtjWgmSdYxyyOdlRpJxSLxhsO10=;
	h=To:Subject:From:Date:From;
	b=gXOJTThgvthAZebNMXOwH3EBSBWGt4Uze5691j2AgktqDDXr4EHZHk1DHEVsZFglG
	 wxgYip58HcCjGaB0Y2nGgmkfC2yNyDI4gViWKC22jvzuZ1GuIw8L9Qp657k3S6yfdb
	 1IxbaApMLuZM5psrwzaA5P9FCbug3BPu/OTI14AWaW4uSmu7STHGkjF7m923i0xUl/
	 fiLB32Ihnl//l2c41VWQcibI/jobA+Fu07XRGItBygPUB8Q6G12wV53UVuLJmNvD+U
	 S7uJ/knFbKXSOZCsU1mgsUEL/vF3flL6DqtGAfGj3e+SRSEyqDgOKNPVYWPUbdbjkG
	 sQULIn1qqpXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9BEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141648741.15359.8669264189113505133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fd891c6d7bef2be8ee91b03d83e422715bb657c4d577d8c2500ac3aeb3ecbd
Date: Mon, 19 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671416487
