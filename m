Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6623D75
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8580C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690755128;
	bh=tPjcpYvqNgsIyZTRg1cBtQQ5I9D/Y6H614QE3fwin40=;
	h=To:Subject:From:Date:From;
	b=CuULswe0kHp3kp8KBc3OuQ9IFdZay1O4xs31aKKYFNt/m5A4xXQXZfv+LeuYiC5Ux
	 UAd1xrJlxtLHzbynKV9BTI/8wsH8V4uCRPg/pM+0fJn7sN8IizbDoZtN54Ay6FF6Lg
	 g3rFG5ZVJNgEmJeSvE9JTNTEMefnYJH6+xy+dBE9g3CT16aTaZwHFpz5p11UB1HTA7
	 KVm8w4vE2dg6ainu2A/fpSgVESnWWOwc/Fgg6YoQ17H52YQKobMCQOuXtAZkk66qhM
	 kjw3KkkXG6XngSCX3Hu7llNKAtSB06nJbZIImzAH8NWHdHx2ZVh/gyfab05lwfgVd0
	 7wp+evP9ZRNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C68C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075512868.10986.2244068836606616834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6829b4f7eef318efb73d24937f773a11058fe1d8828b3a7cbc5fffa5e9e9db1e
Date: Sun, 30 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690755128
