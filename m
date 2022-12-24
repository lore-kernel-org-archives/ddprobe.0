Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D972A180
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B79C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671856887;
	bh=cmIb68FuP9POfOp5r98ZucrTTcxlqTQwOQ/11BL0Iuc=;
	h=To:Subject:From:Date:From;
	b=UY6swhHPELnRehYQXGWjrx0K3xOBMCkeXcYJ9y5Sl/qcRMDuErFG5Aj1YMINXTMb2
	 sNR9DOAVL+KGxg18BBE7oL4IXy3UsZe+Ycix88HUZrVRQgZ3EIsBUatmi2L2hh9aLZ
	 q+5tHcikRh1CErVHg4aGjEtOI9rSC502N3gfbPH/lDqjfxo/3klkL/DFXUZyT2W3Ar
	 0YucmgvtDLiJRtYgURaVPt1LGc2XZFfmtW0KdKvm2Bv6t5aaILMeDLEfSw8TJlO9Ey
	 FeIHK4aBuoJ8xSGDN4LBRBnT/g5f3SHXhmk6BVQhktoDP4J5aCBieE6/9r+XlmwqIP
	 4xlg8sRONtY/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4D2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185688742.31818.12626034666585086963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bf711794099fb164560b33f46962f1043c022ede38b7c23a5ba1547bc31600
Date: Sat, 24 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671856887
