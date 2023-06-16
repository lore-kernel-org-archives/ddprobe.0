Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B771627
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC5FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686879548;
	bh=iBUBAoWKsmIir+azCNO09LgIrCnQEEVuuNNisD9wKOc=;
	h=To:Subject:From:Date:From;
	b=TNcCf+1D1rZHh/rHazLxTgBx1WTc2K2w1X4EN8B5LOcheTRYufWlpbCnZqChrZDAE
	 p0WbQ0OAJhepy/ddj0fHYa80qxUjoFM1MDnWfMIlXoNdhO8R1sUOyvq4hI0f/OOL9G
	 azbYSHbazTdlXh3C6GhKjeK745U8E2saAuA6whu5Mu+my6nHsLxq5HZSN9ph/Eic7O
	 4TIF+x4+Ks/SI0E6KQphigXQbcmfnXcl3h45PWuPUY9797qyGMhdQEBUYL5H3i+Mqd
	 G4pkQb22c3lezSuryyYQzduHCNQbS/L5qmIOxUOOgYyEF4T+yzvkxmin/978sqwDUU
	 uTyMxbWQsi8ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E3EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687954872.1058.11217832549709885401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706572e3a3265af270e7421f48b95ad1e60279eb1a68df584934e9fd9892e4d6
Date: Fri, 16 Jun 2023 01:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686879548
