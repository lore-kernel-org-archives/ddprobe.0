Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735CC17EC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 03:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B2FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 03:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690516328;
	bh=c/Xq4YmHyrp2t6PBm3bp/ywmYzpYdgqQPO21Cq/N2Qw=;
	h=To:Subject:From:Date:From;
	b=kVazw/4Xw8DFqMACpJGdhzW8wzyvpcdUJvy+fthLL+1xgzKsPTnkXApXKJJw0SUR1
	 ztFLo7a/hsmg294lVazz9P4tRXyv7tME/tIfslWqYqnRp+nneDk63E/YJkUgURxU10
	 JJZmWNM8XYg0Vq0Ih+hMFLXTpsvLU0zh2L3Vaa7FtTsDv0R3JyjUDC2k0urFMfWj1Q
	 r976BFbuCvxRstvtNT69N+0osCI6E/i0fK3vCCZOJ/llQ8HejGa7toGsVHqDKJF5ZC
	 cZ6E1y7fEirTsb+IyGdPviZqQqfLtHbot+/lAECrgM5/vSY7asKrJHndC1S1EQWDcG
	 4hwm9zKanYmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9657C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 03:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169051632868.31552.10238621022473546115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b418095c6cb4c9d9a9c902ec981bce3d6967c2a0984a384fc56fad5ad1c13dff
Date: Fri, 28 Jul 2023 03:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690516328
