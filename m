Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FF2578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF686C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681660625;
	bh=7cgplAIplBfF57bqF73El59w0L8JMzcjWz/arsKiOEE=;
	h=To:Subject:From:Date:From;
	b=iSBTkxZuXh71Xy5LcsKPR659Vq3bZPFvOCzUXa9Kcj38q8tyK2RPVbk+MarQ97Sl1
	 n+BOx7FLbL2A1bqtFVr7cTHgXqw+HdJnKm90kOrJWLhb4Bdi7KcshGzrRF13/zZ1Kg
	 o7MjXdl/Gwk05zHsL05pGV9jy2W8J8MA4+CpJE5cmKoqvtOc9bh4iVuXKELrtripaH
	 JPwlPXpnZyAV57Tj4jvLrEVhSqPhnDC0Sn51UZ6EfnI3dux6AQ5WuSizdzbN7bx2JT
	 FE9vGEQUaBi9+MePkTxlExJ3b44yot/LUIaCexuL+k9jljTz809L0pcYgByio3PBDt
	 UumCcb8+LbrKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE966C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166062577.2281.14760766238315468899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3376ec0b151246f75b9c8dc6c5c713106f424f3993ed6fd04a7fb86373b2d497
Date: Sun, 16 Apr 2023 15:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681660625
