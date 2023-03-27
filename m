Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D12C620
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68CCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679893925;
	bh=u4cRefvFHfnmElHLbagCqL1rr1AWsjvaiDIMXmazAzs=;
	h=To:Subject:From:Date:From;
	b=nIV0r9IoznjnsuNdDv+lFTBXaMdkVYNFu2th1EEtkjKdOzGsfFyYRWU+JJBRYt/qN
	 mHZcxVZHMofs8MeAU+eFqoOJ05+8wa/aJFTz2NUUF8/hKtWRAd0ET3C0xfv9EORf/E
	 ZjXD+KTxXek0/29iMyB5x6xDxyprMrRAgj2obXbWFtNYa6ZO23Li1AS5MvooZxpy6w
	 /npYvwKCgjrxMXEeePVGJJvYTatgAEnWnHsmH/8L/P2RGFA5YhQEZh2ax4ft4xivjQ
	 rcXnBdF6ZBtYliP1Np0HRR6hoZZoIV0Tscp6JdMEeuY+5mifA+cLthU7AdNdm5ZHzY
	 tjAfCQ7+Ci/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE76C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989392581.9560.1486930651475010909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a694eb740c71f7aacbf63714d07b2bc47bc927d16277371c17079bfc9ffc3d33
Date: Mon, 27 Mar 2023 05:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679893925
