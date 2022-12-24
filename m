Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D253B7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6DEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671868287;
	bh=Uqi1y/S3ij3NKEEjKBEVf2pDe1uYFtQ2twtupb6Gaak=;
	h=To:Subject:From:Date:From;
	b=c/XsiX+60RRIjkDAiGNnVEjctUJts2BuuqgIQtjE0J4OyoTgo2wGzboav1YFEKYhw
	 DIdfhBFfyHI6KhqQ9QoCH/pPaUDgiDKYvnWwjFM7YIQU2/YinHIbdNHkFWKph9KwgR
	 pehwkcEbqu7uruYFbmAFi6Q+BLfENkTAPIbljEpnO3KSany7Ei8rypeoyZSFjAmSFo
	 a4yggoix2uF3I/NYo7sz0p/xRp6zjl9o1QcPcGmEIHQ75oeTSGHBX1GBc8+hG/aped
	 yTY77H88M3RI06oUVgGQ9FOPeW6KnsXPRLaptDXyZZeFGaL32gYcbar2TyXJJRCu3y
	 rXbJp/YNVycVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638C9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186828740.28964.9577035642868182961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce39b70538904ddc07df4293da396a47cdb26b84f0f6e52968e385863d6a0ebf
Date: Sat, 24 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671868287
