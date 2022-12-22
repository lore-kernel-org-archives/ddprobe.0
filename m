Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D955B2563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79424C433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671703287;
	bh=OH4Ghl93norPsrTt7cIQ7d3rsno/huJutklDMFTESPg=;
	h=To:Subject:From:Date:From;
	b=WOBDS/t4AdhlOu4HthCylE1hg2pIagCem2Ym9Wq7RogW9QkJgCNKVgFr3BmM5+ZRv
	 B2EOEFSMGm/0XnxMKo8PVOf1x8aQVYX2YSqwp6y9fg348+RUszjS7eD6fpB1uMPswL
	 pPPE6qrJU+z1HNeH/2DdJL4X7L3dWLwKeg7Z7sHyjdRzGim62FltEwVHfRFT8VVdFs
	 QesvT6Bl9oLfkcyweGOd548IBQNpY4HbovoX/66aQZ7Umt6n/K1O157SYW9H74bxsv
	 VW2iytJq3jVpf9orHbWsBdNyR++h009sr4LPVJKTYBW9wQOtnFoczr8nDT+grDbUiV
	 RDV+ztxlDPnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B4DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170328738.14991.14803031493787090581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fd9d7bab07eb38eba8c2f358f860782a4d19c70f920824a9836b43cc9b5e88
Date: Thu, 22 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671703287
