Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D49737341
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1ABCC433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686155526;
	bh=qfoomvpgBmkxg2yBjyrPHNtgiLQLxUpAcOEmF/1X5go=;
	h=To:Subject:From:Date:From;
	b=mwHx78lXLN3ZRto+AW/MWEKo00f2yn/MCjT367vtrIPWGsgW0B+erx9MzWtNw8/Yi
	 Zo6/sgdeFS+Y/zPA9lBG983r3nyaP2lc4LJ9D4T8DJF+qmjEaESPCkaHUKrj732u5N
	 PNacAZwwJrJ6hcgiyx1rVXbxNMbYq2oLCHMuVNTQMXaSXFchpVfS3pjtPrTuyOlrYa
	 TYgTK6GDex/Z2DyXwMvdZgIPQgxV6CPxU6Al2r7sAFADuu3CLP+iFs9ZfzSo2lsdfH
	 OHdpauK3EDJiunnL+O+L6rR5STKcYhHt8oHikzB2CCW3BzfirXAsSGxZGlJwh3HQCZ
	 +cymfiAChFM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0913C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168615552584.2903.5084884710933608415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b333f082857e2bec556d87467ebb58637fa0b8718f1b068b2e2ffa313d71cc
Date: Wed, 07 Jun 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686155525
