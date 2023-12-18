Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1053D2E842
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jA10HR20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EFEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702899496;
	bh=V/whw2oAbLf8UyNq/vaQzHp7/NfLkPtDm1g9FWiz02w=;
	h=To:Subject:From:Date:From;
	b=jA10HR20k9y6G6qLjdoy1rLjIXHa3tnoWBrkHwMju9B4GZFziJPeYW0F27NWl2EUS
	 SGZdAbpmV+38TVHjl/22rRld0Ncl+21z7WPMD8b9gVZfgW8E6jTQQWiXsvdxzI1Pb0
	 Bi6Zt1HxXqHyxD6wQsfaEvMJ/iP90W1n4LYHT5MCTSys3RoWN8nNBzds05+16oL7M7
	 tkjXVFNq1b3Z5pRIAdsdP53xFXSTwgdwPNnYns6dIoGHXlKsc8Y8/h0t0aLZ/xddEG
	 BhjlGob7EHsnsfmHmN3+xfD7e1H3PGmfFidEixFHvBb8MVa9WIsz1pKCutbs/JP7tP
	 GJySQtla/JYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6527EC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170289949640.12538.5489463267256471079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2c93274d11107994b835a240bc0f688491b052e4c1661476af751f985a6809
Date: Mon, 18 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702899496
