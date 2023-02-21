Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478FE8C0B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B9AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677007805;
	bh=nCOzip+uQ46tkSo5bUQGYqV6pR1yge3f3qIOocG0oro=;
	h=To:Subject:From:Date:From;
	b=f4Hv4CLaXDFQxW3j3JY9hUTAbiMHfb5ARrerDYpZk/BT3M3bc0H3C56Int343rWNR
	 x+C3ckm7MXchwfJ4J0d7Prjt0kF94BpZkjyNpUbr+aND65sOhRI8WA0nvef6rGom3N
	 tROfaLCyXq+Qqcf5dEMwDKCkXASJURRfKeToEJKQ0vowAjQkyD15mhXJ/VEi3aoIj4
	 xJV3iMSdCu9WNXVg/I46622oq4fS2U3MzYBsnyfGld7wbiwGbo/d5xCYg3X2AHjcgb
	 GPt/UkcBI+zvT4nuGSMkpd71dRfORaGeDkZMcwG3i1h1hai67Y8cp4TyWAqlqUSTja
	 KYQGaAhuKoqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD04DC64EC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167700780580.19222.6300994780654131074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235798a4408bd808bb2de1b9371fcaeac44987a45914ff5765ac654557172d7e
Date: Tue, 21 Feb 2023 19:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677007805
