Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C3512B74
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUqX5e3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05FAC3278F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696505768;
	bh=j0x2mA8dnr/vuV1rslBPwID1/Dulbe16Jb3lqcbDFgI=;
	h=To:Subject:From:Date:From;
	b=RUqX5e3LudEXc0taAIzTLrgzaiK9qiHc29Cwq7qpyhyV9MBT4Raf5G3oQs05kgG/1
	 pqksD8d7iCMB9qmPCX8Cg53a5ttv77IsiQYMitlka6k5vComw0fUenClksV7foQ7rf
	 PKK12JcJJTtYcFVu3Tr49Qel/74FMI6wxtoa8rSazK2b46TXS7Ht7aztXqYuA7+Aav
	 ZCuQIkgbfYGLksX+vMob6a1ACo0x/FtCBH0siLPrfkWPBRdLgremF1K+uWXAOSCuyX
	 IMBDcJQuT1N/dz71CzBw48xPMSvoQKwQYQ0WrrObn7L3bYxnd07in/Y0TUwEeWcqw3
	 un7C1Ppl9pV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5086E93709
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169650576871.8322.3278763016851041177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d65eec6337473a88127eb906fafb5bbdc88afdc432a55cab08ebd001e2b209
Date: Thu, 05 Oct 2023 11:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696505768
