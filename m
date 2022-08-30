Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37ED612E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EDEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661902853;
	bh=Sw/YNDCBKOMN35C5gi6edTmw16w+sDBO54AeEwUZFls=;
	h=To:Subject:From:Date:From;
	b=ORimvXpL3qrZPeIpQ8ZeGkbHCMbcU32fnob09Md+CQ681iSoZRrNYaQKXp6IliZ6J
	 3HlEn6g+gVmPpqHcFPDa12NDl7CuZHalcITOd1s06TdSFG/e/8VVUHu0M3jYgD+bOR
	 bPeGvnR0r2GASHAMpTWI9JBHYYrmd4aVZfUcdiBGdns+rI2vcDE1pPexIbOabLTkir
	 VOUuT9f/Q1ENhQ9qP/4apuZgo3pOWjWy7jVivaEfNFtTKxyuclltkuEmnOQAidiKFt
	 40rqN/lvAPJNvtxdvMedGzom2TvXOijq4Or6QbyXIpgWLKt0bJwBX2k+sRb55wJc9p
	 PzO0hjgHal5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553D9ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190285332.3620.4258658633303847530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66925da6deaa37e71265c0527af0748c3257b94fd93024385ec52bfa557f617b
Date: Tue, 30 Aug 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661902853
