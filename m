Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008421843
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+v45c56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3C2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703122696;
	bh=wi1ZgVJckWjQkvaN9FHt0o/YMpvvbM8Rdbu9IKlRWyc=;
	h=To:Subject:From:Date:From;
	b=N+v45c56LXWHFS3G4XcOT2GWIsWBaeh/jNHZFrN92pWIVzunmkPPQCIWFgXxAXBil
	 qf65nX4hPRLZWrzrPzM+UTuXccYuWDnVNhrc1G/tuIfzQlpgE2VZ1xHopiHDW30/oT
	 LWiadEjfUYlxbaNn/3X62pNk4VvawD2s343l55jmLC5w1LCJc0VIymTu6bEC009VLO
	 yFHF3e9HWrti+3Puh1Q4Z4SphsJgiHgp/QysEKNw6W1y6GWsGtMuGReAF9qlFXWjjg
	 Na1/sgHdUr5XPIm31Aj+bbexkDuNSSzDokf82rVfqNcfS544sjpnlkCfmiybFSPWco
	 GTO+56qOs80OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE90C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170312269638.25533.5779925171993418222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48fe7a20fdf26ce96cc73ce8672dcb50e2d02b73210a13440fa4bff4abd0a69
Date: Thu, 21 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703122696
