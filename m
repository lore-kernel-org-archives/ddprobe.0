Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A4F1FA5
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 10:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2802C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681035065;
	bh=l0ngpISNrvaYbm3Ds/tcv5YZsz1Ao6kDVv4fUVwd8dM=;
	h=To:Subject:From:Date:From;
	b=JboocImFgNyAWG9ii7+TJVh4IhCPOi9Se6fxcXU1BmwYUIoUg/E+IhzAHMn7aLgRn
	 1UGGZzmvr7flemPgjwzTajUne3mxNJPjlr/xuf7hhxGjhCGnPJEIqT8/XcLBeZMxjH
	 y4mxjEnM2Mg+qa7pcQDM9/NRnz9lGBJZwjtZCe+V5Hrqm/KanxQtG0TlKEvMsN0lXd
	 8Bxs/RQXflJs+bIYhvajqROYptIPv+/tFX6uUzW1u+1QqyjD2jIT7RtTzvxlgmf62b
	 WRCPYK87eevINzDfaAILvlltggU7lc/NwJEm5OvwkY2CJ0mi5/xoG1PTanuZjm02Of
	 lFIqpCJNTfYhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6776C77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 10:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168103506580.6019.7323986002595422473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa29d807ac3f1bd81bbe6e5d35a0ffb5e5185bfc4edde3cadf76a3a2ec5787c
Date: Sun, 09 Apr 2023 10:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681035065
