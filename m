Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27A715A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80606C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661564452;
	bh=BhoF99i/XuTY3tLSRiUCi3nT4s13PVJhsazkQltlw7M=;
	h=To:Subject:From:Date:From;
	b=n7rSniuM2I78yLLi5e761pH27u27uQcFPa3ZuROYX4/+hGWFKfVr/lEtRRDiUMMdm
	 r8EMKuTrZ/LDS8rXsQ5z/N18P1Za14MTjerVfVmpgYZJxXRkxfWPhkIf9X6Bq4Yfcl
	 AWuRC+/HfbhHXkw6dD5VoFkP70vpzwtzHnTC4PLU6uNri5WldzeewjRzkOSh7JMQcd
	 y7cd8LociNOeE1aKE/3+09QHgA2K9qa9jZ3VfuC6Vu53ZqnHY3mUOGjpGdDaQxIMWW
	 +GmTKD+r5OX0lRGrTTHJZF5T9A378Hcri/HN/LKxFTUFb52xWmGbtUmT7/lbOi2ULz
	 dBIB3EGlghmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B23ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156445241.22825.12450543809316135362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b57ee8a071cd4181f29f42467714c4da62bcc032e8fcfcffae8527bd34993c3
Date: Sat, 27 Aug 2022 01:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661564452
