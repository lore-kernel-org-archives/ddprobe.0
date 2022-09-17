Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECB92119
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F85CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663421453;
	bh=lcbbHFYKlWySDB/xiDUQOf/vp4G9BRhekfvucTTFk/s=;
	h=To:Subject:From:Date:From;
	b=JkRcX1OXbknHamgwP2eLZzivFHPtkO6dfq+/tJuPlfxueM3qk0rarXLlNBFt3+Ugq
	 heUeQGjU0maFkvQWLJXIRijhrgXcUkhGMPx1K/t4D3n4JxVHvRdwXsOlx6cBFB5C1Q
	 +5SPmvJhGEqLEinM71WJz22iwMblntVmSbCgiRfer3pd3NBG4TfksNKC0Wb6TEsX4A
	 sVb00VZiQJxqQ83Fb6uYwxaAPQ6HXde3tMu1nPgED1jiaPSvElo0p0tTEYek9gTtOs
	 OMK8YfrGMtbG3ceKUdqPJWfb5+XsOsDn6chzc0M6ZOoyE2aBiiYb4ts2Xs/Nivcyiu
	 OlKuNEg3P8TCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CF7ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342145331.28022.9861485855627191015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e5cac2392f43fa7dea4b4e01ca8a42588e3ca5f915b48036a2284b3c720c10
Date: Sat, 17 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663421453
