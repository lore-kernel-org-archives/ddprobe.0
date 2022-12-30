Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD51C539F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90825C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672438287;
	bh=2/P4Ul82pZExjVwfHPSird16CXeu8VlQhvjyBoFhZkU=;
	h=To:Subject:From:Date:From;
	b=gTAmRIV+vqosRR0r7eIDO2OCMCUMPIKqZTI/Co8oD6INbstl6/MIbwjiwPXTiKXFY
	 7ffUg3NdTPdi2MS4lBafaqXJCVvcQtgiJExiSNykWSdTXPnbS30lAaUjGtn93s6gAo
	 2FttzlvGZPBoTAGo+RK682O7/DvMtOdr4ZJTvGYBCah1YJKIeCj7RK/r7lSXfPAVGE
	 AYFAEM7NWCMDb7nYbVTMraAivtEpg3MJWY0/QqFWvLUgpSChRBwRMTrNbebhOjvH9B
	 iYhueUE4PrD+b31qD3KR+vS5MqqNE0QeYOh+iQxSJMQjeS3nwXCk6pWRmVu/5IsVcs
	 QoQp7YjdTyOsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C1EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243828747.21166.9122450488787584412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0903aca69304a1b3268bf8c4000f81c1e70b4aa4ff3c30e6f0d70a3301bbf9
Date: Fri, 30 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672438287
