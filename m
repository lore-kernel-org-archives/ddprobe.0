Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771581FB7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E091EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689522668;
	bh=saiWqr24Hp7L5fzDoiUQYx4k/7HLPC2f1+3B5TQgmAc=;
	h=To:Subject:From:Date:From;
	b=FI2aLshNJrqSmRY0zR14VyG6CBPnuAmUuBbsUotXsG5uJWx7cV8QNJNDz2HVDQgar
	 TIF6AExQiyI49+qpmwD9re7AmdlB2loW2IHfUlno5EvZl8RAuDdJD+7fSyuumEvgsS
	 2x/L0+ZUoY3emEzAibOZZ0iaatTGMeohMqUE9pEyDeIUyRmyC7mTpJbY9CaWbD9gnt
	 LsqS7Jy0xakydsJt9Rm0TfR2AAEwssQIOkyBKSrcuwC/p8KS7itfpwCWam1UDekbo8
	 9wVEfv3+hypeaupXYk5uJHDAU0efNFKKULduRnZg2Zv0jJw79hKIEnCMPMB8cHkCBL
	 f2eD3Yr3wlSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F9EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168952266878.30218.8522915582922949997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18238af4dbd0925ab2d96a0c04c0514f7b6db6a319aa3e2c8ddb429ca4a0073a
Date: Sun, 16 Jul 2023 15:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689522668
