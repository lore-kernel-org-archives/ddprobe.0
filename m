Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05D928E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1BBC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664635853;
	bh=C4Pjuzdxt2ilXDO8hgGPBhE68+RHQmidF9C0JjFC1LE=;
	h=To:Subject:From:Date:From;
	b=BJGPZElO4tApnROQaCQafZYzDgAUgkZZKsXWqZWNFVTlt9F3dgZdC5TT0EKoqlCCP
	 Obmpa12UfNHcTQNdHBii652UltISTMtcnc1BoBvHwWGeHx8YZk1syH7005WsCZL2Fn
	 yhCLWXKolDF6+UXFEEXGYLcylPsPmqzIhQsbivN3gSBuRbO9+gNNoYsbowDRVjI59G
	 cyAIMyTgcb9l6+rq2gdMP41DXm7KUaIeGjf2gUunzUDEf3M5SDcU+tV1ILHG7iTVN5
	 6x9FNcEpm4noR+Rpg4cbHFk8R3bfopT6m2v72aX76hnZsNynluJzfjob3lMAwgE4OC
	 XhccoRWRJVjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544E5C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463585333.4345.12827925766610208294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a0265f49c417abc1374e164d866232211263d4c99233b88a7681f4fa62ff4f
Date: Sat, 01 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664635853
