Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CC810FF
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD212C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691532188;
	bh=y+qTsjsTDDhxJ+AsKmVObFivhlZKnVQBJLPm1Xa54bU=;
	h=To:Subject:From:Date:From;
	b=TKWOhV8/riiT17TbLQFYWMpneD8gbVBARMswnjGolkkhM2zqp6vA7yhBMPt40o4Bg
	 +crqZOKlkaULJS+QjSSXxus61cFAkUVtWjTddTdOQMj78Jsa9r5sGoK+ZwD0lHoVaf
	 nYlPjPJeWsPALA2w0inDhsHiKnXCkvTMhFTRTNezMOeHk1ksWfCsIaQ8Y3BnmWrUwt
	 9eZv8/pf0JZX12Ax+br7kLhQrEHgqynCoplxv3Xg89P2RJMHadIa+J6HiEE0159AdT
	 BPIGaEiC0eNiWILXas3jI1wijgJQDVhwc4HnlA0THgAEDLcJjogk05hRYgNufHZGwy
	 4WkaXTDab/ueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C6DC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169153218871.9504.14228343289636906904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cb135e400c016f1bfe9a2a2c4a5839c38f7591ff5e5f3c8228200322976022
Date: Tue, 08 Aug 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691532188
