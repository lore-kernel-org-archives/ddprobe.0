Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C217C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E275C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681453326;
	bh=g2v7jvmkjJNDTwejLYV715ZhryRZqgFKrWuMnP/qW5I=;
	h=To:Subject:From:Date:From;
	b=FE4IYQv5PahMRrfKlPGOIInO8ciq2Jgh4XFwuqeDxxkURhG/S+iqgzHK2+o4o9dqI
	 DXTgnOMsGfwdMt4eVw1NGMbnL7fITa9zdA7aOsE94xKdNfCgd/ncnj2aZOT0bjL/3u
	 auP+8EYAK8Z8iPxFlDcHNpY1BNvKODPQY5TwEMsxGldtdCxnny6iSCI6xtgVPSVDKT
	 KYTyYdjeMRCSorcALAoYYC9/DXmtEjdQkqxDd/QKEEqOlr2BduXszLArwU7171yjeS
	 eqpC+mI1NdwOVmHDAplX5ce15cNsPsT53EGPyEDJ4+QIkbzf4ICfa+gQ5Upx/N0/uH
	 jk9quro5gCoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDD7CC77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168145332589.19183.16863121938722034598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b1f13f67abf16340c40014d8aafded2a87c2170a36f139f00e1dc91b4c55d6
Date: Fri, 14 Apr 2023 06:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681453325
