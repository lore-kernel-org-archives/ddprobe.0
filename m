Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6BC258D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7220EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668897054;
	bh=Llkf8bFW3EBFOp81bIYJR9UeVJwIJyohXY0KK7/2CXE=;
	h=To:Subject:From:Date:From;
	b=cHmirGy/SysOJxzMbFO3k7sK6ft43uunfoN4OhksTFhtQOvJ5UtTa0U2rrChTmpfF
	 p/B5gcpIdiPN5kVscbQBAntO+ymQLcIKbJ/zt+rj1gCZgMLV8lT9mVI0GMSuQQDoR0
	 6RSy3Fn4VyxLliN5kPHNztX+UJ+BPGhOybZ7YfAP76COgC92E9POVcvYtctVcqCLRj
	 LqfAnmqoEz5RXcLFIlqHpNZX2B+jkYnqNI2aD9+aw4L5v1e5qgxB158a7VQ+Bu3Rgj
	 EggKhMCgqz9DCMcznTOT+5uexviSBcuhSrZgA36l216FdLYronVH9cRprsqcyXbkJn
	 ORoVHuvMZ84hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536F5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889705433.13827.13461739930051683055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f350c917e889669fe2aead675ed2e00cc0a141be627ca507c702746bc85020a
Date: Sat, 19 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668897054
