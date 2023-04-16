Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434487B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D0CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681647365;
	bh=DhBFunph8nCUTb8YEbOKMK6oxloFoyrCkoWPwr6U7hQ=;
	h=To:Subject:From:Date:From;
	b=u+frytctOaz3EvS/tTYyhf+NWrd2haEu3aZlXEUehNo2pGIOc2c46ecCMwbqIatAd
	 +2Ze+7LEMIpGwdww5TTRQLCeA5nLrlN9w+J1Kc9DS1hV7+0z1AUZm/Y/5G88Z7t0ij
	 u9v3Qka9oPtGwiqzax/9YBC9xn9CWJCjEFsj3za0bnyLo6ZOW5DQX/WwN0B8UBL2eE
	 GtWAKG4nqRr7b1bspLlHuSXUBDbP48MrJu01LLRTom3drRWvVAAZZQvvlPU9l6XurU
	 lcWw4ec15snb01YWV0dYKmQWWJxxqP3OMWh0yOYZXo79kzPy+Tdr6d8qUN3tjxSsV+
	 QK4p9oRCHIo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3009C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164736578.11353.5893317335069546241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cea62362ac65368f7c1335657face35542ec2f2669c3c72a20972d9933dd7e2
Date: Sun, 16 Apr 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681647365
