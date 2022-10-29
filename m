Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D6915B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EE2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667013654;
	bh=/2acKyv2dxcJXrpJIOZdyBodiLDAIQ76YQt6nh1m+1g=;
	h=To:Subject:From:Date:From;
	b=hDUjBDnvdlXCzoc+YsahPathJVM2REWXT2UaPeYjIbwCWFJ2hflR4YOhEc9UyKGaV
	 m9qtxKXMPwf4ypcmCKaHfke1Fh0sibHOG+SL7oXydqiKwE6AfG4h2z+isfGQiKOSIQ
	 all8kRP9c+bYWzjVgvuAkLQQfoTuPTbrxKx5tmb5TXcVBJuDf8nxlSlCr0eR9aNOEY
	 O/xy4XblQhnYSo3+Z0iWeJDaOmzgTqPPgM8+IMzeG4/zaWv3ofJIc6iTMyLPOuM1A2
	 7aBQfmMvb+sObLION0d/QVhqTgMLOQDvNgT8B92cTGMx0VH0aSFfXGgRSDjp8U19mM
	 Oidk6WCwW9nfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6215DC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701365438.3340.7628829772840158457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010878c14750bcefb71a476d3fbe4a46d5f227c5d2eaea50a0c3e9dc3e3c0d12
Date: Sat, 29 Oct 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667013654
