Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F7522D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8A0C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688901428;
	bh=5qYBTxD6ijvIPVfTMjO3MJyjpkBV2JLO7JcPEJVUtG4=;
	h=To:Subject:From:Date:From;
	b=A1oeMMP8RdA6i9Hc2D7DqdlxxrstO8A71qdTWscmWa0TrfTxnIov9Te4tqSxpc2JC
	 7E64oWJ71u5lqEw4+OKW3Zqxb6+dBZHCvmN7Sb3hJCmO2EuMx2dGmcUOIH7e7dEpPj
	 n1X+pzMVJJXWxdTGIZo8Rl+zbEvcqfVm7Q25MwbU9lqvtr6ycVGcipbJOOrQ5PI7da
	 IWWifTZCezqLr3sg6Pfbx5bEjd1DdeEPUCOCKqxbJUnnuDWKT08dLLtfKduEAkNzBL
	 lq9EUhaFgzoy258hwCgj4U5YSctLexULFd93TMSo+5ImO4eeS2pg6aZAmdspTzxp6r
	 EAIx9zDy81KNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5125EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890142866.1515.12686706653854702669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7175bf251961a5929a7cf66a121df4550d949c69d8f6366bae3730e492b9f508
Date: Sun, 09 Jul 2023 11:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688901428
