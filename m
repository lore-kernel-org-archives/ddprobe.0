Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F31FAA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZkP8ANC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797F8C433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705289296;
	bh=DuIdVPfcGSOm/Gu7x2IPFzD2rgIpoOMaPResy+V5Nl4=;
	h=To:Subject:From:Date:From;
	b=hZkP8ANC9Xv3fkQAVW4E1sDhx0h6lWPBjSoJiBB2D4LkfYqAqaosb5UvYnZjxzbrc
	 Q2LXqsIps7VzxRzX9Hgdh+5PsVbuy490Lqurw9QBbaInQLuawxwJXatdprFNm4XBhh
	 YhdzWge3jIeKr/4bR6ig3BRoI1IG1S9+pD3t/yrNrVjYpoTbzTTykto517A2Ya8+UR
	 wkeU21DnvTUi9O6u2V5kOxh247kwCmVHUMtypCEqM328pYFKXJNjwmui9z4mSMJJMa
	 FRluTLs+83i2yLAZRQU1UUTZxp/VrS2a8RpkwQyKr+yrlubaUEqxaZQaeaddWysl4r
	 b9/HeWM8D2PNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF3BC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170528929636.9389.17204355007370662048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718f9038bfa22b44015762273a74343ab8482cad26b1599f262ece325d38e367
Date: Mon, 15 Jan 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705289296
