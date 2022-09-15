Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA81190
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F424C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663238453;
	bh=Xj2gPLEpMhHx5ATeC3WIP4bGerY+c3GMKX6tDwDHrAw=;
	h=To:Subject:From:Date:From;
	b=korfyUiYeARKM9g9TbK5cOywnZ7mLZET/uRk5OoWIue+quFDbuCcskDg1WnX5MIir
	 N/+fQHjQt94HydGSRplDmeTPF1MVCT72v/5DXDjppfxdublIAf6qUsBQ26oCblfQrm
	 Qj+yh0sjW9ueXeSv61aGZVKqMHTIUYimo7P/6wm6GCGyqG3duU/rYf5srLpmFcRWtv
	 lujWMksvqdi1VBbPsFDSC0dZp3Aw9TycPUuJkKGPre5wrkd6BOywwybdn6Vg8vu/0z
	 lz6tSFbVpeQjGMFMGxdKtC+Go9FFchlOOX6aK+dNIi21OFuOwkx9lXMU3SRgCVOP3q
	 GGlerFvQ1ZLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59162C6FA8A
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323845335.11964.12545684700064921032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3409ecf3c19005b1ac77be140772df0b2b43beeb2829cd0b097ac3bb4ffad2
Date: Thu, 15 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663238453
