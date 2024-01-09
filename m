Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3E439FC1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmYM21Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89003C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704812296;
	bh=zTPmmztf3ZS0ZTzKJJFmlncj9LyyZfQ5LDGGKWyIccw=;
	h=To:Subject:From:Date:From;
	b=bmYM21Uvpi4fcPUlJ0Sdb9ykc43yr98vpOWHrSur4d3sKoGrLda7pQUxj+MxQnoxD
	 MRZir//C/hhOTv3JrhLkWMyviRnxMzKWejxy75fH9cbhLoNgZBR3eIjLL/MX5iY7oq
	 6Q3KMK6vu7xaVlm6I2Uy72TSaMxGGKHLkdtGK36Hc1Kg4t/NMGBtjODrcRo4dt74Aj
	 Ny8zAQeyQlaid1+c9cPCckJnbtW7c38Nqxj42tsHD0lLI9xun+7VyJ/kGMfnlxNZ/6
	 /P5Tsm9SqavXHtZVtG2MJhzS9CPVRWAtbfVDXGtAhOaj92NMhg3LNbPfjhwtSA+pNb
	 Qu6Y3FY3i3bZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E008C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170481229644.725.5925352023307080452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b70ea0d3845a582f42531e5efa4091b021a549750789c1473eb06b6638f0a8
Date: Tue, 09 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704812296
