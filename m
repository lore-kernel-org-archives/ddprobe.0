Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC62F2B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5DAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678646825;
	bh=WaNHQqOT7Feh4VajEOTX3rjX9h4xKTw+U0i9U0vJj2k=;
	h=To:Subject:From:Date:From;
	b=N8u8LMyRSTUvxA9JJl7007rVZeNs12zAmcIKLVjBT1dnXSyaEsP40Lzjlto5pKKFP
	 rUPXZbtIIe9Z4SvKT8aHR052bersJ/JKVZV2k9+Lzw8+P3V8cNBtQWnOyL2F6unMkq
	 oz9eU6AjBuPRSQfbDLxn3n0/0+yBQJwc98cXtynxbbCMBd/KR0VVKlnq3/GAWkPmx4
	 UzAD+ax6ZHiK4JZSuK9jmcg72bRAI5aHOAp0M3+2AS5m3329Cuscvs4Yron0ohK7Hs
	 SR+HzqVGTmErwm+Xqv1regBZqZAv5Zof/W1sM60IR5N1av82wD9s9DU7Px2+ZQ3nad
	 NJQBSH01G1sqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FCCC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864682573.17461.13820761212435747084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380299bf8c691be1cad7e74cd373f777999976918121c615f380ef48d10b04cc
Date: Sun, 12 Mar 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678646825
