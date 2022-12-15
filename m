Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D777C28E7
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E38C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671094887;
	bh=wIkZAaM5FxFRlcMWt3ni35M8roweKA5zXCfzMxUQpHw=;
	h=To:Subject:From:Date:From;
	b=R3fXVKDFTXFzE2t5ZyLZLv9oRvy1pQRZzZJ7eWlyfwWo590XDTYDKMHKV3oOe//9T
	 YacQse2Ew76ST1FKB/Ig+hXO5Byx9KmL5IF8oaLTWNms+bonaGEC/Kqof+m1Sx5SoT
	 /mDZ+oOb/8JmqUw2DOpE3lNSiRn0rvFOJETr+I5cJxZMfgCQO//bHPstuXyKIOWnmF
	 a9/8g4KrKsgogYcsG/TN6OVPEPZT1rZSl8bsBSoeXkWRY83m6tLWAGcycuT0ijs+Ka
	 XKD+SSc20ZnvGYvfpjhTBCV+/+3s4bEswMY0TqLFJbBjPPlR2EpGkayrq6jlhIDl0M
	 Dnq9xitpbYJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ABFC00145
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109488738.1557.12441749242557942574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f269671319aa504a77e943351e29aeaea69673e3884ce4ee5a258e06d1f36ecb
Date: Thu, 15 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671094887
