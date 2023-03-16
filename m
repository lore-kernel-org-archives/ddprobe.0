Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BFD612F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D35C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678989006;
	bh=hFAv2s7TMol7DTT4LFWgr5qL535ssqZntRn37g+pu7g=;
	h=To:Subject:From:Date:From;
	b=E7M5gTPGdal7IMNTA0VPm9N2304ndPnWIEMtpZs057UvH8BesF3RwWSpGQXdhukGg
	 oyGT1PdgBbNbBGT2CdWTW3Htuq2zXAlD2TEkX/biebxHzLwy7TKo5/mvwZoRPoCXuC
	 9fqnIpaPEf8RPnk7FykRg73bM8zTOCTKgaqCPd0738hRdqyMNkA6OJop3zKTbQCj55
	 tyB0VEMbePEVZwxR4jipg6BD0/xji/gA1OuSpNdpJFPLMCn3iIbDbCji49JSSrhOOK
	 NsOS2gGEwTopZTtGblR6HCP8GO62Vv4IgQ7DQskbvtvmQfr0zi06q+u5B3VMpyZA9k
	 jMV3M3peIIrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3818C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167898900585.18638.2086017169749655072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d5a2cdd949506ec8013ba83f7e5074614f4d44ba8b19a7c14a34f8ad612ffa
Date: Thu, 16 Mar 2023 17:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678989005
