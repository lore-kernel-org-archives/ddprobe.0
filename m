Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E6E5CBA
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7135BC433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661814053;
	bh=tW4auk49LRPxKMn+n6sTAzQVUSaavJMQ20IU9664Zg0=;
	h=To:Subject:From:Date:From;
	b=it3SpHve86yxY7nklQW5K4wKhrwNHNdjOQJmqbUUCwF0zAIVGUNVWe2Zl00n5oJIb
	 dvcTe2tHweu475t0X/DfYuJV44dGrHMzh/qsD2JVg0a4/zt6hYpketTF/Bu+e5tNOv
	 6/Jv1frPJ+YhheO9ytL95rDOK8q8IhwTOXVt1NPCOdTPcSkyh39SwlianMvzJD0hn4
	 ngKEMX1L1bkJtUHklWlcHqobUrAgyAncqEl/Ecq4wW9E2CA1K4nE9hsLK6z2X5Q11C
	 WzZnGH4e/Z9tIyBvXuCeHyA/AbX1WmDYDmv4l7G3S2MIP3dGmH2RQSrvR8AG+uwo5Y
	 de3uir7deZ77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583FDECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181405235.2430.8133040850846448441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edd03221d14e098ccb5e69f493412037f1c2ae970ad6e2e2637ed735e66051b
Date: Mon, 29 Aug 2022 23:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661814052
