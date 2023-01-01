Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC0120E6
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F34C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672555287;
	bh=Fvp5WfgUgRSc4zRcCe/rIwe+oBosQmWl/2AyjlQvgvQ=;
	h=To:Subject:From:Date:From;
	b=d9TeN8Xhwc/VeJXNH3+bB9fzN0AmiXTMu4SmugaYYUrFvbBqzz3LaonxGKnf21Eo7
	 VRp57ncf9+Qj54cMo+Izxi2hzFI2D2zbYdIAJGuBBd2a47nEPhVXjJq4Axey7aNKKY
	 kcb4H8e8XmJlrARLoytbTbH/ZpvsPRD0IpsQVF4QqCimrqbl/a7zUF8S9mve3A88oe
	 THVoUox7OEQZvurIlbUGYajRSdDDbkxr5TjGJeGaJWa2y+mq9VdCfzi3y1Eh08xaBI
	 plBnuvUdXlxWLby/P8nTnaZ6TbT33qvt2e3vIAPNe50PMGd9GP2KYaXflhreUyDjxd
	 9h8sJiypN54rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B6E5C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255528741.20457.12257119953162090151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612d57740668f8ea83371cdaccd9b3561e85f1580486e78d003514b850b19fbf
Date: Sun, 01 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672555287
