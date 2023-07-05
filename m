Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4479FA3D
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CB0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688526968;
	bh=SmsX7YTJXvsancuXLXiT+SQyRHXNuOmydQCjAg2WrgY=;
	h=To:Subject:From:Date:From;
	b=Gd0hhEN9oCJ871oWBsYcW2R0fw1nCgByQ/NKOM8rH4dyBNjjO9QAXpamy+FG5FHgk
	 +XNT67CG9hbhUGplmhq91VEMhuSAp4h0FXH/qIRTFUdigiMD379Qj20COUDZkL1aG/
	 8VtnGuMstG6UMlvpdsjP/lyUVcC2/vZk42jYoz8p4s4KArkWZqeiCQADdxmwN54tyG
	 dJhiOgqrIoCqqOmhUSIS02hDmDpgOpnN0G1Ue6zdfJJQIcs1SYVY0sN6YmN/aHE8V2
	 9Vcj1WhIme9wYWRRCeXsv5rU2leBPjhIcKJir9UBltpp+4YY2CkGD+/wIIo1E0GaXe
	 6bOmtcnLW3Iyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ECFEB64D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168852696872.23823.12959016548415928220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f07fcf8f170648b1539e47d0a3e6fc9b3239065ceb98eaec495f91cac926fa
Date: Wed, 05 Jul 2023 03:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688526968
