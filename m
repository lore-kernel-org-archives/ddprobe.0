Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDEA1096E
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 10:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C4BC433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 10:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683628265;
	bh=cOb3PvARpezMY3kWkWoaXOAP2J0PJtMGKyl33LSqgIE=;
	h=To:Subject:From:Date:From;
	b=e50XzS+bb/Cz8lqSUYLWeyTeZUuUrwFWZ60r87x7otGekty/3biEZjCY4qPigET/J
	 NDw2uxg2p2NZNQO50ZBeIm/PqpnByz8Jh4c9iLPGsTsC+EsrvkseX31pL8HKSrgAf3
	 4MOQDDBCdMqse8kEcdW+dw34WDNl0RSQS6NNvCCF8cr42fMvDfMNy8kme64IPtSnrw
	 NR3ex0OWi78pCuGcV3VL6ZaCFzeXK8Rnato4zK89EtmNEAZ16WkG3v0SvAUsIPDMEm
	 8xOAQIqFtZYYuscfDJuQbsvDokqUZYkdFEh2HAlesGN3/sTscW8xlk9pMlDLWsRqPf
	 OKg+py3N/Hr0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A8BC77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 10:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168362826575.18069.15229602239713128986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba69ffa490b18809245c9646f86e9074256e2adc2bf1a6621b7dc458d7227924
Date: Tue, 09 May 2023 10:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683628265
