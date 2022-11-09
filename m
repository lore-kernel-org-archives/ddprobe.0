Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D102101
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:00:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E29C433D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668024054;
	bh=e7PJG0wXOoyUZC1YCidTOgTg1kYF9JiqGoH+1hokbYw=;
	h=To:Subject:From:Date:From;
	b=gK3TolbdN0cnvekRNbHM3i9lyXJuC7yYZafasbtSXVNvUAzqFwit8X7UqCu6chfvU
	 qs8OxrLCT6oB/950+bpFKDsfKVPXxSw6lji4KMlJ7y65mjDMJt/K1pS3TebX5CwYDU
	 /Y7A4TLz7DC9mqBR5jktw5ZXImwGn1tulB1EXHgXA41IBzuxoojZNMgcbBRUcSmoFx
	 Xl5LhMsleoVSCPiZpxC9UiCQ+5Jjxw3+YPz5T2y/Bgsq0rl8UPKPYp2iYQKmTRj7K3
	 pJcNEQ/WpcibOtxAvAPxOUgIIdzTij4p8Y/Se+VVOdDfKd235kNuB5Fo3vuWuhzsYs
	 uGrytKyWzvFwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C416C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802405435.31158.7630021536858856328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae0fa1111b8dd2ea1350aa972b6d9a6506355c834cb2a3cb18437834c2056c2
Date: Wed, 09 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668024054
