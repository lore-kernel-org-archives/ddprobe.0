Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD84415C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804D4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668654654;
	bh=+TNSlQz7Fu0fgfe9u9CJ5bxn0E4F7h6DhcS7IkuPyos=;
	h=To:Subject:From:Date:From;
	b=DXChRphs+tG5Uftme1ExrZ9GYjFp6UECpavjgiDYaSP1/SyFB6bRYBFc668bnAOOU
	 sGmDqWkohCRBzvps+v/V3FoHh4Wci5whGAAU9g2j5uvALpbXfEEyMnIhN3enAt3aTV
	 1h7AG5Q9mKsvBEPq92jyjmYuYHZcr7to2MaptPs9cd4I2IAbXM4jB4OZrapbk5pR+q
	 xLZtMdRjzywzeeK2PdRGeWJFvUOJ6jPIDGV+1fyFC/qf5/M9Gt/DyXjMqcybHdCJtS
	 qXheROCVgMqmZJbKvLmNG8iM7+ZKjbBGtJmqGBHaogw3akaIII7GfdWmBUpujoVwTb
	 svdKJVfKZuwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62412C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865465439.18891.1901967256346081261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8cf8c70454136f1a87c419edba12a8f6a1f7bf9a798a0d488cffafe085a2e1
Date: Thu, 17 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668654654
