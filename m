Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87F9A48
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E61C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663605053;
	bh=zFtrlDm3PdDq6DRHqyFqiAuP0oxf9nep4VfXTVYdsHM=;
	h=To:Subject:From:Date:From;
	b=u7+7Roy9RVmL6k2XfNt9MGTriwOZWtBF5JEYX1Y+L7XQxqm9WiSzxQIxrutqnGROZ
	 Ft5Dlj/oVaHdvXxW6N5Z83dCQJw4LySADQ6pMMMSThebSdi7xPbgMDWs/PJqwvJdlo
	 0ILAc7vDasUSPQdRyphsszYeG5pufcIvC0K9scOPeFwqZ0cTeRrdux3p3WYlDM06gO
	 LLtByGf9ZGPwUU9UVUUsxKT7Gn9JdOQA20gGEvur5BC1vg90JPt2PxgYRpsjOvlcUI
	 KkkpLSHh2p4tGVCS7rsEIVwLWYYajWhEkwCIGwdCoyPX2snkx6+GrJ4sAIbF8Xsfpu
	 lOxHUE77OmuNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594A6ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360505335.30653.3487191192798838967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce4ad6c9505ebe75cfe253103e4867ee2d1b502025f4db0e0807bb702aa00df
Date: Mon, 19 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663605053
