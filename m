Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A3C7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 902DFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672359687;
	bh=ea7ETmwrB2kZcAzYZMNFaL8+OQ0qlWY+okUg3NQ1fzo=;
	h=To:Subject:From:Date:From;
	b=VgV2eKKWtY8XrOM2WsGRj6dwA7LN1Ec5zomwsFoAheZKCL9a2CLeyEP48c2Gz35wU
	 0kLdkyalxo9A+QYMEAduB/FmWtzVPplNLycALRncbD6oWcHXdzgzW5Cw3Q6GpvCSW/
	 pNDiyIf559Z4XAoooatIVOirDxH+XmtR3gm5i/3kQX4seCU5SCC7d/NqxpyOXcp954
	 DP2WcHVHE/1ybDhXaICkbjBaxXFfzNEqzWk8AVhX2hUcZW6U/2AxTI20gl+m/fypLo
	 muMaNSkz3+90rxkzHI/X4dIddBMt0EsXoOEnL3SVJ04nR+STS82J76D41oI4ebfFFB
	 fxVSPWcsdYh+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7230EC3DA79
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235968744.2347.1618274716567302346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610343ed326c5bdb4e0530ac88e2ed10a83cbb1edfc6109fdeddca083d147b9e
Date: Fri, 30 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672359687
