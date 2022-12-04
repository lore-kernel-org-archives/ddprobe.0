Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2963C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70555C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670175654;
	bh=PczU64msGD67EkFkq1lZLg95CrkHkS5JcgII0uG3te4=;
	h=To:Subject:From:Date:From;
	b=l1wUnoTuqjb0QmEYEQ3TruEm04P8gphaSFzY7zeiz7SmQPr59sHIX2EzJKR8t0ogq
	 ehQMSlue605qw36gYbC+z32w1zScQyM/BYJq8B+kx3CE9jpVgZ/03xdScQlYgU50YJ
	 kERt9IwDUDp5rTcV0lg5fDhBkSGc5KeYL6i2+W37VmRkIEGKtfmE2kwQrjq32ht7T3
	 ucTYQWW3CbM/fYluZJ66oKVg03kN2FcEmiatYYI59j8U2D+yTX2CUnnT0ScK9kORTc
	 nFqp7iIDl63FV5XaL110Y+ESLwkFsgLjlk51nHLZOxE7KvZVPZrm7ZHb7DM87RA7+u
	 VCsCbc74dgPrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530B7C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017565433.4759.3320211624107122397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd819cf6ea1ff9e19cbee3149f14fb80bd8c4c2adbb0bec90d67f4f50a9f89df
Date: Sun, 04 Dec 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670175654
