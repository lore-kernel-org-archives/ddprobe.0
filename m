Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73727B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71850C433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665883253;
	bh=sUK4bOE6R+3soj0SpHaKpZBo+rPp7O6lkdpFutPQNeg=;
	h=To:Subject:From:Date:From;
	b=sc7fcUsNMR7zyhMmt4X2FPO7gZQftqx5W+w9S0g8VQra1QXSXA4/er6s6umav9J+T
	 KjmmyI3cHnhCdJA2vIvGW88/sct5MhY2f2ms9CKIkdAlzmO9wYFfRyb+lsjzRZ6gHV
	 x+iYa+T58EMXnSqlKlZF+qjlITMe2x/uodBZeLvkTKGfcphcvhuyh3oIHkdyJN3q36
	 I0Hc9feKM1PhLO7A750rLBGPE6nsWOZduHZx/srpSThm3IMOPzBMt0TkgbS4v5XSqN
	 ALM6jiT22AMCeGAmdsPFZcZwmxT0zaD+pIYrGOtabU5XucIan8jwJ9pSJn/LCOMoZd
	 uvNADm/oL7/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B7FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588325332.8535.2899066574368353888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa7e654d1f03d713044cdc8545d297c63bc9ff33c74bb63787045ab4001045b
Date: Sun, 16 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665883253
