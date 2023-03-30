Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4016DC2FA
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF172C4339B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680176346;
	bh=wLgQiw/czXAohTc0te0Iyr4lBSXq0zsx995BHxiPEOI=;
	h=To:Subject:From:Date:From;
	b=iRHbEf8IQXQ8RmgO+bCAFU4DUgJl1Cpndq1LHSS7WZWDxSv0gjMli5UyZrhgQmhLb
	 cjY3xRzXKyzgfPiTZmQSrKPuIdm3glUj+2lUfAgi+LYzN32p2jm53g36kqdx5tk7Wo
	 384zRtluiP/uAsTo/xclay3O7uqzkb/oTjk1vTAz3z1tBDVZdSRLvoAXSC+jVHEl2/
	 dQuj65iSQyEF4t6JdatItlA0F8LKUo4/lb/nzIz0dtmBPPTW1S/y20E0uMPbXlc+Cu
	 YHDFkQXzoYduV/tTh27lUcUMT6zZNEXjI0cX6CiQOWknbrxW6hq4XthkE+BunBj7q0
	 q4WFs/T1RZccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D206DC761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168017634585.2518.12506160880974060967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7bebb407912e4c5135e021bd54a462331567b5f17e30d6d067b47576ad0821c
Date: Thu, 30 Mar 2023 11:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680176345
