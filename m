Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDADD7C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB43C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669864854;
	bh=OJ7eRNh2j9/ozG1qx2K0JpuClWtz6IWjpSQJmwHnjhg=;
	h=To:Subject:From:Date:From;
	b=LUZsw88pngnCH2GbuxXFV1bLxnCzATIYdNL7H8HJW9ZMjYHL2L980xyBX28QKgBnd
	 XRUli+GGP+Wa80kGbmpq1M95V9yZti8Hu5qVm8dyFspj1k3FbyBfeckMPKHoggqb67
	 4XyZ8pJ5/E81kuEFrx8yHfx7vBCnM+qO4jmhgl2pxqZ9z3RzXFc95bSrxOTrLPKY7V
	 qn1145sxaHOxYw2wriYBsBo5j1LG/JuwAeWvhVYkqzSQglR2vLwTS5lDSH9fBX8hVe
	 RFoK8akDRe96kK7WH+sl14nI9awqfErGxxW5GF/xZnjiaqgN+4RieGzkVqLM0x2Khv
	 D7Jr5korznM2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51906C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986485432.1959.16885063262137075039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60637b2a4ec8581c408a32a50793804218bcb07e316b46e7d9fa0096db9cbbbd
Date: Thu, 01 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669864854
