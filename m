Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91991FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87391C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672387287;
	bh=/KKUeEwJbH42VAmOi6iIZFl8PD8KM6q1svrBpcpmnv4=;
	h=To:Subject:From:Date:From;
	b=FvgSojdjliKFqJ6qLFGIxrzkh0VVHd6ybXrPbi1EnzYhjcaVpbNj9kvZpCukVIfsJ
	 b+7mK+RIcBvIIzGE66UU9d14WUfkXW2O7GkDFSG5u/VJih8UGd7fjlZcgopBbDjUQs
	 oRb0jgfCzLV9EiD8ZcfA1K618qxNbgyH5y0t4eTVaZbdTSn3hTlfy/HOe+Jur4psSm
	 lunCzvMiUPw7feKzQQOiWLL/Ytbd88unO0Jq6UAGNSz4PH++Zb+gIeDy35+k542KJo
	 q0SvcDQvPgL5XSYJLKJcw56UUJ9sNExTv22aBVDQG9brfTFQyaPoAKaYloAoFCGm5l
	 aGi1rbacldKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE62C3DA7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238728742.9862.4567534533781528590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb26862614e36ed33eb1ae1104733142c26de7567d778c21cc9430493e79e578
Date: Fri, 30 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672387287
