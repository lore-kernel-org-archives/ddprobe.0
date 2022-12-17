Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F1C36B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D03DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671283887;
	bh=N3yo1buAdjHLiRMl9m+L0TT+Ee61IFKRMHQrt9V2LRo=;
	h=To:Subject:From:Date:From;
	b=uEriOkqtZgCR/kSQ3+hTceE8l+t7KfObzYy8xEXdDfCpxr0f88k7zNn9WQ5CdQGTg
	 PBjFNJpgQhAslbuSns3I7b6N9MOOyEThhiUfE+NxInOdSaMbbeUPUJr2AFsvX/hkIy
	 QejYL4LqdFdXr9PDU4SaJ/Q3nndR9Eq81t5t/2P3wSJ5HAQ5lXEhBvOcrR4vhevlEU
	 6h6ulafXU7wKd57RcH2ZyOpkbJlr8eBU0zxaVLWpCb3pP1m5zNqBqXIA8D4Mxvg4KQ
	 OOPCozpWq1EgKYwPUBJHqzKHRThIm2j5Fa4+FWbe3/YmLABzGlm+fXrQjgPNcIXZGM
	 byp4BejRLOL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B590C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128388743.1464.13261945125486609830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed242cd3ac0fb1848f37d4c8d82144136efeed84350292479debf555b27a476
Date: Sat, 17 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671283887
