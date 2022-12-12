Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC30A28EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F36C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670857887;
	bh=sfJh1YqbH2lfWMiAoLserzrUwDbWXAsYYwRJvOUEOiY=;
	h=To:Subject:From:Date:From;
	b=p2cdrBc1PDTgS1LHjiIoS2KzBYb+ElKzUyjQ36IiTcey9uN4YP6gKI50m/By8J+BR
	 uhYZUNzXqonm7odpCku9osYbh0JvV4t9vxutfn4W3O41Aj1sOTOTvVWA4e1MBjftLG
	 HKF/wxe2YpZ0Fxn4F/5QCaC9LDIAvKS3Lfy/OvL2zj0kd6PbP5HdXk6NjQQ6ru/R0W
	 tgsCzcEuGcKBJh2pY8pedOtKtyYw4yYOCoSAiXu+N9IE1fbKmNkJStBJI2Ns3XXZkn
	 qOOpnxKYmCFuEYbeGfGM9v0Fgs0Pvs21mV6G9ryWPaiFLRlLrvprZSBn23jtb7o/yJ
	 AIJncOS9tfvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C3FDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085788743.15061.17763699558648088625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384efa15cd653569cb487726244288efa17a2739f996dcc291ebb25b7b181be8
Date: Mon, 12 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670857887
