Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA33433DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F641C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669384854;
	bh=kOQvieet9WZC3g4STPn4cmlddW3LMx4uuwveaW2sm2o=;
	h=To:Subject:From:Date:From;
	b=T8QS7kYzqNkzUABHKM0UWxHa5xJWIfp2Qgct7SyAiul5vTpxize52wkJtbWe0hj+Y
	 Oa2UX2RWNj4mrokYsWv0Hkd2hMADaBUeUT1F82XtZiSUdvthXNkfqi3N3t4a/iv5iD
	 0b5AN4AuJzVUmHsvJbNndGAlnIJ8IR4jCx9x+E6hT9ykTKfql2xhHv1+j/xw+of2om
	 /Tg7MK8eY/o3kPQ+9Jc6oapJ6UhgyKR+dndzN4v/YrLJdzRnKfnoMyl50YBY3c1pkT
	 g83jF83FI4klFq6owWIoBhNKgEgTLtb4Nr5rKzCq2mEzEWLwUr6xzTbVEHrkzaBLAC
	 3u2aYIgnc53QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56858C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938485434.17334.10563079458171642427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7b1d7bace98a39dafb1139aa8f15f8eac37cd2db9773c1de5d6827db70b7e5
Date: Fri, 25 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669384854
