Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FDA1A585
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXkRSZWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F4BEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698227896;
	bh=BF1Gv3HU/5Kf8e3S5mXSJg28zZDiQveEaekN2CIRnKo=;
	h=To:Subject:From:Date:From;
	b=CXkRSZWWOtTzl4GT0E+BT1IhVn1ieFqSE1e+mZ8tk2yud0R/s7kM/0EyX5cGsY1Xh
	 gyzka37uw7vSwKKhPjV4EpSZInkdHUK3VxXc52Y2deB4aLPTB8MU39yi1AmyqOng+e
	 i0UplGsOSqTTmmITYI1Q2399hNIbMSpAZNydw+mZd5LpY5qkaHDQRL0eLJUtvoUGIj
	 rbno9TE9MdnfwGVAzX0XeiMPuuj3T5eIAmc+vwuhjzrLrS1ofQQMgfhJ40t8ZYIgw2
	 nBFQOjruNGs49C7Loy7puzIIdlN0CBRQxJ4qSWFHKOujkGJEc5Odpe4lY+FyBtCB8A
	 JqxIIHX/mI+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C1BC0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169822789647.20273.11793214616749099995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6036fb41923b45ae4901846bd93976c8b2fa670e63fcc035ba79249811483c4d
Date: Wed, 25 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698227896
