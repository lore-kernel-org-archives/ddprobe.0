Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A7179
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E12C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683419285;
	bh=jV/io+ldlV+D/lWKe40TZZ/Ez7GA8q870MTn6SAYobo=;
	h=To:Subject:From:Date:From;
	b=iWJm78IXi80HslxiUG+ufmMCnxPGXcCy4lo3I0Wrma2PgqRw+Wr2VbNzc77bfrjYo
	 q96cKUODVvMK9s7LsS/rV3kDj61AB4Td6STz/QDmDUWKvoD+gXQTbHru03lFTu5LoO
	 HgucaBTDsTnbw6CPB55yJkuOXtA+Eab8RPpzMXoY38OL8iQDPwsmTVKNgzJrQk/Gl2
	 vtXAHR7f5QZe4i2q+fu5wnGF3HSL0Vpnfd913wtmXM2Wf84TErLPVWY26mX7u1VBBB
	 cNaqhFIy+syH6O0NWWr+de/mE6ZZE1kMFo9KZtWuqx8XzjWR/AiOK6NN7JNH+Xv7ed
	 6yOog6XvBjRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC14C77B73
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168341928575.10514.17515976802570086646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7df99a62bdb0dcecf7211e0d4d3d7f77344233ad79b644d65ce9093e05f997
Date: Sun, 07 May 2023 00:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683419285
