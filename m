Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F1779D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F51DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670089254;
	bh=gsoy83b52Ku14YPXNJgskCJuNIVewYMTYs0uatosp8g=;
	h=To:Subject:From:Date:From;
	b=ASkHsC0fSLtz5wrzB8Ks5cHhsRhHdggvRmN0QspGDBpba3xtq57k+pst3Uvhs4zix
	 V7i32q/cbvHgiPBm5Zci44FfltjW5MF9wfYZ5H3XFZvvkle1XaY9JSC6MLUEPbnJmd
	 0A/W+Upq9We3iVNVD32zJCR3l2ptdCaR80fnulDcwwIoepSva71YlqwtSKjSvAMF6s
	 zSMOTRxiMplus/aIGT1d/sjsSGI8jCtK8nInsnCgcynk5GtCfzkgVwogfJY13gerbo
	 jOoBM/DAqegyqK4FZep7qCLTSXkh1Z4eaq7vRETc6REYLdba/7FFP+gxLE18V/D96p
	 L1DxC42rpur5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DA3C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008925432.18454.12913561892660428631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f12678cf81c27dbc1e0ab3921f4c9896f792fbbb41a41202f30af0ed81b513c
Date: Sat, 03 Dec 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670089254
