Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E57441E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D205C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664214053;
	bh=aWScftvsJUmqAHp/8PKUbAjlOty3phGssK7wUpps0d0=;
	h=To:Subject:From:Date:From;
	b=D7zeQbBlBy/Olrgf7nZJeqUR31AHPtSaqIfQ9ygZoT8g7JP+AXK3lBT1HN6w2Cgb9
	 iZd4aU+WnvRyDxJ4f7rxwKdBK/AIAZ27so1Wr/pc4a4b7nxwFFUyL7/ToF3e8BEhTP
	 k6eonOoDTb8jp8tdkAksHVSqrVnQBCIcJds+cdIHhaBOe5khSSPBMNFSb+QuQV6etw
	 /6xcTjNPCNNrXPA8X0CJkiQbrDBxxriacDH7oZ4NwuUgneDBa4bTAIcqYYNrG5blbd
	 UUGqQVv5VZYWPP/rSpdWgtIn986g4i2kJyfyToP7peHX48I8TKSNHPPGrvJVhPIbeP
	 zxMVaHRBmMu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B71C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421405334.27943.9872044332658067721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cd847afeb102e5ff1211d2c42ae3320901f9deb1b54cf1f3680f0640db8151
Date: Mon, 26 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664214053
