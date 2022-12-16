Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D289336D
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9E9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671179487;
	bh=+kU9rwDaql4YEKkPcgorLRibZD7fh7b1vnaYypElcoc=;
	h=To:Subject:From:Date:From;
	b=HyaSM2JxlzZRfckkeVYV5uMa+Rq8rzWAzgQN1WlIUkClcQV/3nVjcQhBBFK+yyVHh
	 E4GROgPQaotWtfNpxmyhPhYuieiugl5gqrsTJgndmxH4g9gg1L4QS65V4++kEB6AJq
	 ByQDTwWDjbeDora1j+pvSqHCU0d9pguUfPg2LSr0cmosLC2PME1ARY8bjDvLdKJcR1
	 O+kWuryNDC76hbj9WURVsoV63mi8HwtPUVG5KNq+OAAAEp3y1DFuH4QhXJYCL+pesC
	 gvC3Sxmr77TowhvSXrPaKJbbmAARVVD53xvZAQulo8cz0naOAt9PT0L1j9PdMGI4z6
	 N1XvORTU7PllQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B66C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117948740.1404.11063603569732063225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f161a9386948d81f0001d9d5d1d941a863adfd3faa425f6a5991e150235950aa
Date: Fri, 16 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671179487
