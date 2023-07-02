Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649CA3212
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B13C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688341508;
	bh=gbQopfAAy3P0Qd0k4GLjxF2Ep+vRqnOguTaaFVsAPGw=;
	h=To:Subject:From:Date:From;
	b=LC27KsnGJRAoaTzYHT4tNQGs1IMeUvFy1RIyGWMwII/4gPPBdns2IPsk+VkXxaAMl
	 jY/hDg37Ld03m+7VCOd78MwM9sVI/D5bLTGueM2nqgpsF2HyLfgw+tod8QAKqvObpD
	 ahz4vutrM8yMN6IFemFoIxrP89rC2HfyezCXLUW3p/m9r16znJ9qkuae+GcgQRkWLU
	 1RR77F1VJ62w0X/GozEEO7HGh8C4uPFjcpGBSLpiK7KS3KZqTIO4bro/wauIf6izUQ
	 rNM1EZbBq/yw0E4OT3jWvWS7QvKM3LAzslKLNsbHjmhKR3y+NBxY5qchO3zMDlH2S4
	 lX8+cRqMtFdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8156EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168834150874.1519.13731910470502343958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58ac438b74218c73711ddf8328fa2e116f3a7db4a8a63292af287b4370d94fe
Date: Sun, 02 Jul 2023 23:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688341508
