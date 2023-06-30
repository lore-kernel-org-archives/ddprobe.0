Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E982A16415
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA52C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688139188;
	bh=xjP+M9sPVb1pxQjI4WyTrzaZtV0La7G+ysLgWEtjoz8=;
	h=To:Subject:From:Date:From;
	b=Jbydzd/2pdNoz5Y0Aqf1v7l2CxeagXiKqc3f1Sa0ZYF2iGb2BpSy/XW4He068a7rx
	 pkS186ayVw0WiCDR4DGbyMdJl8ZEunmNl/4HDbRs8i+Zo2Ymq/XYwP6OF7ks30uA5C
	 E9uGOm2oslrsRo1M6XIieWc/e+UgC2vE7GhKHszhtCqyUfpokVmYzva3hRKVB40468
	 RnaBpkr3vSiVODk88k5YxIkOA4xNZPQhp0OIjoWC9KWVpeLtxee5jmxiNFnniuhP+8
	 sy9iKlbxJkoS8krmjUp9AiG3h2YvfGLb+YYAHBTWgzwudRVLq9/pGOsowIM7AuMfQx
	 tPPf5oniPR2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A346FEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813918866.18211.10701811317425686493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1742b311ed5d149ed38b806b1ce942082894b3472c9c2782654bddef3f342986
Date: Fri, 30 Jun 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688139188
