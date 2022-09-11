Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AF57F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF5BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662886253;
	bh=fgx5F4Lb5q4rp6LrZHIOIvOKeIHSP7oBuov1Oz2nkRA=;
	h=To:Subject:From:Date:From;
	b=Dg91YmskxJdpjF1U43ORz8nxTsphSw3kLSy7y30odRYTVyuRd9GxrkhCygq3szaeE
	 e8VBDEE9iSSyQS3zg+8fKTtNEzhBANjRClkV18kHVPWDH3HGRqKrTKhJyYUIkJQzm0
	 cDmAPXcwdE8bTwDL1SA8QTI6B25u3CffiYs+sa7qagZveZDqd8msRrSN4QyO2lEAoL
	 FUutgPu3khel1AyuG17A7ZAs4cx5cFdIY+rMsCjC36L37qFX1+l/51qM6CDcWfbUWN
	 B/iJuA3LK0mebEQb6fagSsVbsuiQSAWlyL1ovtf+s56TgaPOwBXVDkFAU+FAX7nox9
	 trYAEhXegEC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D3FC6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288625332.20013.327204153746324646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406b1e535eb296dbaacf043bcf1ac8c890415c2bdc9bde4a8d11a0740746b239
Date: Sun, 11 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662886253
