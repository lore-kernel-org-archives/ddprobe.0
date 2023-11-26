Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4C7EAEA
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EznDJwqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A13CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701029896;
	bh=sV29PWoQv4N8LtS3n35Pk6F6w8nxak/8xeE4Cb7fA5k=;
	h=To:Subject:From:Date:From;
	b=EznDJwqjqs8Mpk5bORb2nZ5CDGKwh8oKjdS1iWSltAHiXPpoozChuqJ6EUJ/JnSz9
	 jzRckI1qPmo0WgmjPF4sDSBVw5G3rsO2Q0DbeUYtO/32MCvXGMinjB8YeyYf5hWmoT
	 SsE4zPTEkozLhOWYERJvf837GgtcA6F0NiZzXiQnvXVgUUgZW4WLpFev2UPpQVUUvR
	 7VEyATROWZvUaQjYyLqFEoacZTJlJMCd/xcGBvZ0Wi4iwt7Xd+5irIx0zSn7AL4MCN
	 OBZR+ZcV/JbUORSocT1evSuh1nvsSXYZ+BLhrt/TkHahQ9FIG2Dmz6UlkoUgR0LeBG
	 +RddX4vttgztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DECEC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170102989637.32046.795443988988716532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5221c2dbf37255747f51562069e0c6dde3a76ee428f9d19ef1b16f12f4d92ad
Date: Sun, 26 Nov 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701029896
