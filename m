Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D34B168AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24BBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695384908;
	bh=F4Mh5DCnBd03hqBzfMjzON28xQ1XVLGUCpvxabClQmo=;
	h=To:Subject:From:Date:From;
	b=MRfKj2LoC6suLQ03u6MReqkdzIoVGD27/PBTU9rPKHFsoo3UmOUR2GrLp8Aw8o7MY
	 nC6PxCJs9CzNqfWU1d8WdeAEZ59tupJiiZzoJh4XAwfdyXNrnfG0KCJahdVu+vkQy+
	 ACkSbi1/fHfA6a2ptxEL5sBqYqWZnacJq/dzub36Z1eN/gpL5HbvnuKdmy9tgC3ZUP
	 LYRxnBE+ShQMdy1e6WJ6+ndQG9T6pp8TKD9/seCYxF/yPE/qcTb9vO3pTpcqHPBA8n
	 Fp2/MsWWedQTFbfR1MgOcaPXMWti6NhNBxp60Gn/rNoGtzsHI9Z015a/MRZb8WrBNh
	 gWZWVUcTYX8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B263DC04AAB
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538490868.22386.13451228145166708488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ed028e751df3de35fe13814314d0797fb811b792642fc4941e8297e62bd0d4
Date: Fri, 22 Sep 2023 12:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695384908
