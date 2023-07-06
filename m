Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB9E1548B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52B6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688678228;
	bh=1qFVmCglnWDt4X8CifIUsJI1Y3lurHMDBxC6Sy7Oh2E=;
	h=To:Subject:From:Date:From;
	b=cZe94+MFlCkaoRTyHVkplbL6sF1y6v5v71oKV+c8XbMWDNKdz9Wv/T9q2Zk2flqd9
	 +Xxs8UR52Y95M4L9C8dpv3DZ6xdIfvQlkAHNzqSteW1Kk+YTEGYpRn4RLsHHyvUmRf
	 2m71hho0wdBaKK/qeD9zVWvgSpy1ZjZVLGB/czEx05MJJsk46hvSmh+oKZi4xvMsrC
	 GXWotdbrHmNQkUIrkkoxBd9dMu/lVZsB/+12x+W3vBTIHHxHcIjxxeMa3rORxk9Rn7
	 3Yu4aUEiRz8Qf34mFy13haIvpgcpqxvS2B1uM4S6P+/uX+Cy7ysqV28JLAW/m4zHa/
	 VBHSSeG5TY0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58F7EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867822880.8974.12393928259169665199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f0c744e8431956a88d17e0bf2b7e3e97fcfc00e3437a1271d636d49c580bc
Date: Thu, 06 Jul 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688678228
