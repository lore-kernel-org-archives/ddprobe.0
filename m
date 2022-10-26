Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADF8187D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B167C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666794053;
	bh=jUN0HTlddH7eNOlrzIWawdtnvoe2QPWrVYQKjg23fGA=;
	h=To:Subject:From:Date:From;
	b=OXy3VaFuQWbVJCaLxadiBh1Kc0RsQAVX2YUlG6iaH0CAEEWwA7J0cdJge0uaezCTJ
	 es//VaaBfvMw+8g9nDiVOEPnhYxihiPMB56dtOrnUbimbTRGV+W4sTe9t9psO7nVGR
	 EVAki8Mfuw3mjXDH9qZ+I8/QiRjYb8aErSuNEi260k5Qb1MiU/EMjDL+x7hNOvQkti
	 fNLloRr/+QOA83TAf2rTzyLpRvcRb/5TxjTr/ss+MQEMc0xUXrgtC5xaESk3uu7Stq
	 KDn2ePqTUWkPjJ0BaGXrotOenp43KI8zu4hNW+TEhSkxqeWt2bFMsZ12bI+aVZoFtY
	 YLLfmrMlgofXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50937FA373E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166679405332.20235.16735801323746331104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598762def8ad770a9d608c303a0b28727c090f4c58136dca53d7991ed76f6f1c
Date: Wed, 26 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666794053
