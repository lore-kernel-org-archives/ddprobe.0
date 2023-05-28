Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31644211A
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB469C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 14:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685282945;
	bh=gBNn34yLzv9HNJcf3mXk+2fjEauG49L1IyIG9KeeB58=;
	h=To:Subject:From:Date:From;
	b=YyzKLmnFTJEk0CdTGYeeBargd5E2o2r0mPSe5MpkC2pxVOqXnN3hSFoZIXxU7jmWe
	 9ILBovwZQ5rWb1GbFxTnCtzaNgKkTWVc542jqcPfjGWAOO1S8E2nnwC3WbJtHcgvoJ
	 pXZ82R3UukHn/gkBqlv0/FzPzUpcx8KXiZC9ph0HNXfhDQsP6NNFxbPRj2O11WqAil
	 Qts8/J8OMPzibUrbHoZc1AD8RS0DM1DKhns041eeC3ExknZCgBjHUjF3EAQCHI2U6q
	 3udQG81TptVilQumV4tBvdScUg5+qO02YprELYqSmMUC3rB1G9N17Zw+eWpqxNgW33
	 veZ5h6RVdSzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0963C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 14:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168528294577.15617.3752311758680599965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e571d8a7352276f72348a9e1f942a344f2d34c8aff7f450c579c9ba3d264fa81
Date: Sun, 28 May 2023 14:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685282945
