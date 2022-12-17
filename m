Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE9A811
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671276687;
	bh=D2l6CyWaCYd/iQZuvXA9CJkph6t+mq43/IN1cdVaS20=;
	h=To:Subject:From:Date:From;
	b=FmdtezExAnwDRhzIpnv0X/224yheiN9vD7h/LZO8mSmIL4/ifroDNwtJGUzIVEscY
	 qrY3zvcy9SpNfiP3WWJnT3BjceD2s/YtNVO1YvvIwIChWYHfF62lHnVp6NFPZDn7oB
	 +IQWQ3yZ41VFF6JOnwT0BlXIVRNSuL98HqtLDQrtcb/VR8JYfAvv7pnp296NWeedhU
	 9RpkAKnr9/1M8VXQnO3rtALiqFsZqaPVApWSh3R6OEOLdDFJmAmg6CC1Iwkzfe4l2U
	 U0LAVeFYA1/9GNUV1Lfq5r28SB082leIK4mb3jnLQZoWtBEEjNiqSniohxpMFbC2gA
	 GfWsbEQTM1E0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C554C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127668753.31040.1640815408190015430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8218888a74073b0bc08a80065d46aba853743be6956778c3b35f824440ffbb
Date: Sat, 17 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671276687
