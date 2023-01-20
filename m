Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322217D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8654C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674202325;
	bh=x0Suu1W3LZlTVR1Xr3tekuj9CxpC1B+mYbZYhnVzGlI=;
	h=To:Subject:From:Date:From;
	b=qKms6hfMCkQBz+ETiBep1E77n2YP7k2ExS2QxzsgFqKOS2ByL33RWKeDqen8Jv/fB
	 YFBPaxXAW2fQo76+ihVzf2jABd6NLHtknh+1M0PUJJljewn9MVW3g7467jvshc5oyt
	 LeiyNefz5YrSAIzBZ9fTRkLvyY3UhruheGfxLPbS4wIBurgMY/lm5nHw51Q2VLfPwl
	 0IW2YFGvj+lFVhUOeq0rUlWsIIKQjucWUS4tofPUSE07BemyI3Vnqxkoo0xgkmcjo3
	 IzRLHyGECmGT1ZfUjNJuzj1qDbx9GwCMFZfl2HIbLRsmz9G6FVw2uWs/swYcruV3oI
	 o2/41nQzzseyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD22DC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420232582.31147.16426892431625965159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbef726c49a32baf2d807ceea9095c8934b70977182c8e3c53a34669a499037
Date: Fri, 20 Jan 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674202325
