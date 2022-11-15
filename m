Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D3C8AAD
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB87C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668542454;
	bh=eLKFL3fY4RSFFYUuF2iqRIrZRxdZoPrL/lqYPg6l6hs=;
	h=To:Subject:From:Date:From;
	b=WCR7gSHUpXCA8SGJP02eJsl8xLWPMYaf3LMEa2+HuprKYL/SNwY0QnLrzwbeUha6s
	 p8XFzFSAU886KGPTYvU9FU6IGoUd5XUAWgigVugkQZU2ifSqaKiO+/VY+KP7Qc7DLv
	 RIjpL0zC7dgK24ATMgRCQPIja/T+Mjp+7h7sJXnuh9mAIpz+C4dJkCJYO8d6osm7dY
	 X9d+JhTJrMfpG/a9dwmw89+uGxAXYejx8wrvrhEzvViougjYvUvVSDKdJTQTb5nq47
	 8b29PaBWkjFE1Q/c6KuR++d5GtqTzF6CZs1/7IlkR5wU/DARi1+degt8D7N18c+QmK
	 LJ0loX9OuRJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AB1C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854245431.28367.12976708277352836188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f7f195762e69c5fa8ad05fc87b30313c463fdc4441cb4e84a2c5ce8ee0920e
Date: Tue, 15 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668542454
