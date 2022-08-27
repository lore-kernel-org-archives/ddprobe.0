Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB74715A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D74C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661565052;
	bh=/WfV+eqUWopMtUUnzxjczl+flrZk0xuNVYbpaDnHLNY=;
	h=To:Subject:From:Date:From;
	b=fTq2Q2THgepSO5yD39Z8y7bp2aP+6EMdGdDR79cZnMbogD/YJP2aRMUtzBOcs31Cm
	 UxrTYkS1MLsk1wjOBTl2TjRZUaIqkgQxcmahJwRGZhKiwtvIUaZSxMoqNek4lQLtOb
	 rGXoMceXKGUs7cdLC/Hdl/qX66azgRg3aphTzHx8DIOUb8+nCJ9tr6PhtsS0q8Eca+
	 hWNSyrF8aZFYUg7QwDOVhXAYXsbogN2QHkltOpZQ7CgnjxMmWPuIvQQdgm8Ji31k1w
	 7G6ZwflmgotMSbsMSPKiWpzm8F0FUlwOFwZXAMbRcLTdgmmVRxsleQFfJOVXP+9KHs
	 GOr9SJee/E6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB62ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156505237.15013.6586196263324907847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056f8d328173846eac397470d641807ded0e09b64031e21b8bcb66831bd64105
Date: Sat, 27 Aug 2022 01:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661565052
