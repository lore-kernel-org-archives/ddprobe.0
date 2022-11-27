Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD77B17CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FF3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669555854;
	bh=gpU1M+CVeFnTVl/GmPqaHbB0UNmCPdnDKvyy3Cyp5l0=;
	h=To:Subject:From:Date:From;
	b=W77rvKx3Gngfb7CLoWFWy/icWgOMMwQTCDMWyblk57FpY0oYXU1TAqMrqqcmDGpsf
	 hmvTV30CYQDiChHwh6+uEpbVMZ95SRy/I2WPmKWfPH291TtDa66Y2nfO6z37XvcV/N
	 ZEgWm9z/umscmwP3j6x1WLau3TJ5V1HQ/Hp4JFWJYt9y/ieZLg5VDGhDL1dT0dOIYT
	 yyL1/FPmAllm1L5MwdDV/b6H8/cF4j15RjGvkYEUozG3sgnHI4FasPnfjKU4MLKXiL
	 0lELPuFTKFYHsRa/ervBtKLY7lR0UyeSOZWTkXud/u3vn+qr5iPr7lM+SAZwTsp+xd
	 ov3/02tQb/QuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E8EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955585431.13055.3432550224382360886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afe329773e1eed9c627807c074ff93b26f3fe2463eb516822b3cd5a489ff339
Date: Sun, 27 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669555854
