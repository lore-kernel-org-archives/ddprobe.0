Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA029ED2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D30CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671433287;
	bh=5P758YMREkZRaLbTYFenZbq9rYr+QiqPl9zBwvFAyhU=;
	h=To:Subject:From:Date:From;
	b=dESCzX/XmiNd0DWA0OlxcmUMsxOr5l+UJU3ZSUMGB67IpNeVOzdGIBwDOIPFKAe+o
	 UXkCAF+4qtyvI3BQAST8+uDoIhkBDHvyRONgQaP4F2eFMmR/MhL5tP4PkyKVIFPBRD
	 YmTS8YaWkR/fBA7iqi4Wmz2D1OXpwCDNaalgq1DedDMDccSmfAj22p/mqrsXU/VP5k
	 3zPOKd/e0tWIVKRPZ2AWQQBiU2758rmQdaDfwi/RTwN5gWwa9Q1AjskinsLRj1rQr0
	 gHA5C4pZSZ74zBsTaZxISsPTcHOydREAUm8Rlx2XIZ8TerPrfW2VRdILPgh8yOQe1i
	 BS/gi1LHy/Big==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD70C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143328742.28513.2547946209350805286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ef84dc25ab82d5c232a8e7b5096fcb9420b0320ce4b82249f8327e5f595565
Date: Mon, 19 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671433287
