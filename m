Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79507E
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A66C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667356254;
	bh=c0i+DF+Ur/BZlrxfr3KVeZFprG4hqRgNvD5RV4YZGwk=;
	h=To:Subject:From:Date:From;
	b=Ijh7d0BW4Wde8CHmapQ9MV9NthQfQwMXnVf0tu3HBHtKrPPpG4kSh9FiiyRfQOt9b
	 U1ZBmPgPRFOZRn0riVGAwTdsXCUdvdFjtd7ogj10z0RU3BtYoKpjo7W/pxree1XkzE
	 pH6gUIi5oRW5H58EwWQDAOsOrM0m7PtyXWK8v2KSnX4ZjGuZcgEqtPvwmMR5tutkpO
	 +Y1HG/i2ikEeuV/KEOHYdWC7euGNBs6QD5lbO6bICIL1wvxDMw8qPx3CiqzVB98dGE
	 U4pdnMr7XpViALdaKyaRfkuq1iU8VxoXCvVE14veqaSBTKQOZhnj/6Dp2s7HJvvfUj
	 eWf/OzAh4Hnzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA00C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166735625431.17557.704171890945012742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d84936daf35e0e5ffa85cc9a55edddeefd644dea681a0ff3bcc1d2751072ab
Date: Wed, 02 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667356254
