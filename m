Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B917B7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F5FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663058453;
	bh=P3AUvj3SgeIR65ACdc1bp6man8Wa+VbRKSnwRD95Qls=;
	h=To:Subject:From:Date:From;
	b=ZiZgOK870sNHGkDu8NqRi4qcxd5aq9Ud8LD41XXm5fygoztC0w3OMd0faRsI5pA6h
	 wzPOhw/NlW8F+9qgq7NueJPl6bsakpDxl9EqEFDR1lEfH/b/UJ8VnDOd4qHMuhpCmy
	 4nPkLnyUHpowMVDnYjXjAMnvzWe7xIfL3JyqCMaEHbFJlTD/k7dqSclZrzOcKdWuVo
	 UBVg2EA++cqQmxm6mgmHb8Y0fc8q9ht75DeRQlW4/WYff2tcIx5BA2OUi5vB0XQr67
	 +aKPzyFRuOCTd+00ed1aLzODuZCH0+APcud1p0KnehxUDrQpTOPmtC77p5t1mqe0Dj
	 x/KssRqphFupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50070C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305845332.5661.12068662115107794087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c0dd478c59e66a4a8f5f46af7f83dc48a657ed863973c7d70a0b7a1e9cd64f
Date: Tue, 13 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663058453
