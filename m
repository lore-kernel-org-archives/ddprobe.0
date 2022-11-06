Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84DF23D5
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D7DC433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667736654;
	bh=Ha88hvzTcsav1yWmqaFWwDj7AUClzZMN6hPcjtoXiQ4=;
	h=To:Subject:From:Date:From;
	b=f5dV8oBgoF7RvwE7jZEl4zd2rZf0oOQyMCXIQiSiL2czZXFtA0vVpOho91BPHPe3b
	 K0UC6suAWsImHRwUCRjqwQOjatfdRvttRDPDJaPDDKrRhmWwtVBbCpbV96MT0tX7yx
	 sV5IJWivqLNlZULCB710f6isqdWSZrfsOY4CWhngL1RUfSnHmbchQDL9vrIXzlZ7Yt
	 AiMpUnDw2+15mLsrIZlJGEqeuriiLnSGiTUO1GMPvafDNkT9CG3IHj16RnRu3BFois
	 KYLAbcSBXN2dMT3QE37G9bBrJkzLpsOHcrYy4ALVyfNxef2n7HTeMJd6wU4ZYJPrfc
	 3C9q91BM94yFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C35C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773665433.2749.1739154299059898226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7fa58eeeabce3975b2c15b3cbcdc06469d491affeac02d4ba64640c47ab6d57
Date: Sun, 06 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667736654
