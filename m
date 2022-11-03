Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E586FD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74271C43470
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667484054;
	bh=oj7np+EsFTW20CzIjKuVVpNM6dfGwUa29XRy03mMTwU=;
	h=To:Subject:From:Date:From;
	b=HPVc03sLcnjvcq1nlZUy87DHaC5LhhR7Bbhs9QyT4BUq6A0zxOsUb2V1EkNDnLG9w
	 vM/7ZZDqIso/V3rc34o9gAuH2HKWbhT88Cq/Y1XiZEsRpNQcQH9YxlPSQxjrn1c1g6
	 BVjztaEMmlFd4pMb9f76D7f2vbsLTBV/4KSJjq02NlCBr4gIu/gManeKgoYHL1p4yA
	 txbxq04JBi0q0RwvCxlcZhqoR/7ojXufVI8QbiwH6DF9hHeouMp0VlhAVEfrHZiv8/
	 jhL/KK572asNwXu97K++gjNUGcgIzvB4e9uEngaBMj5V5hkpgzQ44s89CsOUr4du3D
	 qcqIEzJ7a+voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55655C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748405434.14536.9565777054344318513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10162841b04183d6984e0bf773f2b8599cf4baca13e492a72ae1f2246bd4173
Date: Thu, 03 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667484054
