Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF936E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 03:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C92C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 03:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678161545;
	bh=L6Nj9uOFvrJsoBSpeuRB3UMi9zqVND0/KVmPQwNsX+0=;
	h=To:Subject:From:Date:From;
	b=FFLdjAy7HFgmFX/ifaPhzGrsHaSnavB310I5Tl5OBG/Q1SHS8ksNUVSguTFM/XNFj
	 e1EBJlNGB1aW7U4nNv/LLFdWQ7LvzodvJTaaeG+lwpx5X00pbh/V80ACcz5MLibyAU
	 hVj8rQaRccjXveyNbwU1yhU89dEhASsrTUJJaH0Vw/90H+kqLzmdpwJ/AANz6flLrG
	 Tngc4Nrn0tUhjKRQSmOclHamNayXQs1BwzJd7eZsTD3DuHNVqIEavbKLaG5ybuh9n4
	 14/IqhUf4+rX4rijcqL5HL1E4fpo4SfxpdxTuRzvwkqME5RwRC+Nib34FVxNaOc0wI
	 A9s95sh17P41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E8DC678DB
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 03:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167816154574.3094.9210229662642448343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887762a42f13cc14b1c12ea1205fbdf811037a41b3d967a52d54313dafd5a135
Date: Tue, 07 Mar 2023 03:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678161545
