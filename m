Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3F315BC
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749C6C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664767253;
	bh=RjjhDj8RS9GRTFmBc7k3xvlqGoXYdDO4bvYCksB+S+A=;
	h=To:Subject:From:Date:From;
	b=OU+FIfN6fX6XKanB52Wqw26O9a/sTN1R8iHy/9F0X2YjSjL6EASMsrjeJomHu7TEE
	 AQn0IBO2HlOXVRNRCYjTcDOmkg6BDZLQwNh2NOP4vW0SiVju+KA3g5To1Y6JBL7WRE
	 nTHrCuM4gxfdfz/NqDOW+wpkT1RsNH82GbvHdV+QIQ6vHa8qEWvX2/kVLpCQPyreP4
	 POBcaBRcq5rZOPvS+fdygdbgdRsvI6KoPokMTRcUpWxuA3UHYKa+E6MjtTq0Mfh2pQ
	 D4v76ScRVukwsROcmeo06qaDFdC8Y24eoJB3Gy3qhS1NtNpqeqqpGUgBvWxmzCWe4F
	 BhmXbxLeYvN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C02FC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476725336.27157.5243576597995763800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe981c6240c0066263d2295513e9aa8b098ef3739dd051d883e875e8a5edcba0
Date: Mon, 03 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664767253
