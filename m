Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6912F21
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7170AC433B5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661898653;
	bh=QzyCHLjFqM5LvEcKDtzDkCfRQsReJjW29f9EZrUkuaE=;
	h=To:Subject:From:Date:From;
	b=KYuykyJmETFgSyWnC2U5R+oMyi0d4qQzlpoyCRYuP2m1XMfG+GXM7CSG+3E7dIYrN
	 yDahRj3vAoGqF4Bm77Vf3YTIPl6Q9vuZ1LnIy3/2gJMcJaAMyehygJ9GfuR90SZ+jc
	 0ipwCwytiBUHwiQMJkbrLQOu52jTDguC0JzWCm1/cTQP7MF4q07D0SWJsoVYD1v0xE
	 XVyM2eEQ6bqrq4NKDeg8OnwGP31ROYrjHmgduyKE8WQ3SbY65Hu9iYB8cEAWFqxuN8
	 ZrKa6n0aa+FOACfy3pBJ9O0uaBdzSm52LX+12ZjJWGQyqv8OMySfojCK+jZOCfLJ/Y
	 v0COnOSVGdKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A38ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189865334.22674.15555458387634091903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100c3a38381609f3a86b7128c6e02e53887ff410247e992eda5cdf03a13cfc73
Date: Tue, 30 Aug 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661898653
