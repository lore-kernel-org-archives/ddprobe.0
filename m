Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28727C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744AEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667653254;
	bh=tUx8Iwj1vWkEjMECCVROZ6sLPO3C0bN9iylpWLLhmps=;
	h=To:Subject:From:Date:From;
	b=hunn9lq1D075pv8nFWPaNYeXmxcYilbGz6CbgScIwLQdrkjb2c5UlYnBM8VjNQH+M
	 R6Plc0Zz2qDYS0isFnbE0Ot1FZtjhebByOJf/+UMd2d1/2Y3KUYeDSVAOJI4hYBV+a
	 Xlv6Di+RB/jkAi2nvR3H1k0umGO8MknDCQWRp+Hh9KEtP1Dfr8/YHo3QjYUfGwqnjp
	 /XP+kbE5+aGSiwujGQGoxCeZ5Sa99XRRj5DWTLZXP+MLGMw059EinrTXraDVFuZQGD
	 s4lBAFOTDPmD5ZD8YDbDlxRTephJEGz2X3uWTFmcPrz0okSLrcusAxaFIPH2tMZS+l
	 r2C2FOM/W4zGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0E3C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765325434.4354.7605061883369060038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c64a43e375ac679d9cbd7e93c7b5b1fc22567dd86c08626736cbe29406c508
Date: Sat, 05 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667653254
