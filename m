Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE40E41846
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsuR4wSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1A5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702669696;
	bh=KeNUH1Ps0KtF/cOkyYvgaFkmKtWd7kv4zPSjhCJ1p6I=;
	h=To:Subject:From:Date:From;
	b=HsuR4wSYrMsozLtJC3UO9ITlwnmfv1VKi3uFI/caMF2TbxTfyTaUW6eE9Qc3m6Gu9
	 SefdA049ABtUg3H5PVzun1nrSu/LkBN/xGtsG9CuDr8rZJLp30dNubr56IHxhzKr90
	 eFr+jjOHVPvQqA0/DRn1qSWszL2Lz77/8lY+FyvX1iL01432MK0aWI/dQ6EdBTL5Hw
	 cm00qZan/Xr5ShLfDKOpNUGlXZhrzbjQJLxFG1hWxtfptoOZRVmS9xZGjjMWQ4Q6fY
	 GAvgBRm7gr7gki7AYZQA5Zppim1X+KnkMbTSinM9XiUM56rO89vdn63mdhEVpWgejq
	 Qu3r4PoIb2Xpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDC1C4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170266969638.8475.14195945013387864751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872c00b11882e309bc2d7601465060ab043abe2db2a249996f3ca72cd9d096c5
Date: Fri, 15 Dec 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702669696
