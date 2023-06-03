Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1F1179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6778C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 02:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685760485;
	bh=tiz7DLyq4CRLdx/DguqARHFAI6/veXULF+DH2O60Q2s=;
	h=To:Subject:From:Date:From;
	b=dylSUN/+uII4Y6SJTD/VhjLX9sFd3GVS4RwChyBgGtinWAY4T4t5wNL9XTi8/ZWUp
	 xCnXrzX+fhE6gExRTqKpPB9+Sg7WxBQK/onoO/ZDiO7IEyLkfxY4bbVmxbifv+aiyA
	 i+F8mkJ3ykMzb3Wi0n5w9m7uWjAJVvE8viOUgs+bkMDt1c+NpT2mHU/+i9dgxdNt0a
	 jC7jfqSZ50fdfjdBzf1tTU7Evy1tcbKBsi6/8TE4Ciw+eDDGPbg6usI3KcLli+T7BC
	 hUdGF3LiLpVgVljq/sk8cHkaOwX20jvT50eHgIGaYPWB2yMeTvJoBJEWK9SMKlf/2o
	 M5Y4nHH8gAAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EE4C7EE29
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168576048577.17044.12157376222274169447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af121e76c43c1d944d7f6b3e1b7d053b49f91ab5bce0e5931e7ee784d19747b
Date: Sat, 03 Jun 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685760485
