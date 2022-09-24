Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE78417D3
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7A0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664027453;
	bh=6Jic1Ln/1Hfk4q/lIxQ4tXmq6bYfXf8qkS1BD93OtIE=;
	h=To:Subject:From:Date:From;
	b=Po8upLpSzTP+QUW/gRZRbm0f3lmeCDOu35QP5JQlLJ8RShF/fNugWpshUTaTh5CDq
	 NAoOcDkBc7l0VUp2aqIEBHMC4AuxPVlVclBAxRMuIADRv1Tr7E4bQfCW/4glcq0DTc
	 kD3Qv3n3R6Yq6P/8zRi/49hZ975bfdoDhS+PXGijwSPlGmYl9OGDP9JgpOJk86WdN/
	 K3Cb0XjC3MSUyxcipBJVwhiNjSysAZwsXeFMPCzJwdaFOl4Pc6b5AzNQPP5wJ973xq
	 R51op6vtGvABzh57x8ZAkFiVtt+a0HWek2ZQ13Aar+p4Sjga0BYuP+QPq55adSH92x
	 Q85y1X9ERL+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535EAC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402745333.22279.8262618063671372317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab7582808fa4d89934fe2fa611be3f7164582d31426f5a8b2ba33c3a55543a6
Date: Sat, 24 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664027453
