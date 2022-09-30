Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD5E7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B405C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664526053;
	bh=SiojPQ0aKKOOgf1FWhDwiJ+s+/89gdm5I0v7e6ogWTI=;
	h=To:Subject:From:Date:From;
	b=YFQDKraNPZ7pKqa4XhYPq9kBLGSeb856LlI4YLG7KkRzwoj43Qx/QFFIO/efF/5Jv
	 IErQ5jiGnGM4I0B8Bq3eMasA1Ex6898LpAt5GOYrHWQTI5+bJsV2GvYmnFjSzLdD/h
	 tLuVJzkarquYNaDTkScx8rm7/bPj+7rhCdkQGAlrGBqBpcvIgWzFkLTnETwM4foE2Y
	 Ea2Tr+alEXEDDr43OThr0a826C5N2Ui9YzybccB0qikm2rBgMxDe0qynSI4aPugcxS
	 bhrRnMgG5ckprtNzydTix7c/N3b/HxLlqGIARwnRSp9zcY277AwJdNgsSD96uEMODb
	 kGsjQ4pAFZRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51018C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452605332.5911.49703332520209367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2710cead8f4075af40afcdd04fb36e16d912601a62f9915ee7e7d8d97b5b07f6
Date: Fri, 30 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664526053
