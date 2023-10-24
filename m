Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04E29437
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOX3AyVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89353C433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698156496;
	bh=mQIOodhYgAs+B2HIoGYWzGKfC7UMnFxkx34Sswnxn98=;
	h=To:Subject:From:Date:From;
	b=OOX3AyVxxIqKEYedKoEJeBcnIcFxKxd9FZXvWNGwTEQEDEdSgN2nvpoDc8opP63hk
	 pzJBzw/E/dtF3k0tMnXAKDolcjc6kQ7y5q8xVgn8vTkKsyHCYjfkeMREce+djCuZPa
	 qO9poFqB1b9ZHkh/tAfgfGEJBa/b2OpML9/73rWiFqnOHqo31qjByj0QENscF2KmKs
	 FP/bY7dS/az8C9in1yNaZCqTCJmkhZYhPMSRhXegvqZJHMgkoyrqHpfnpMOaerk+wG
	 7UH+hdf4iGBeRkvw4nlopcKTo1y6zair+64MpmvDmn9R/HwZGVYInPogkFkHQ/zDeM
	 fydXgDpwLfxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE14C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169815649642.21209.13512404703621877027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d68bc19c5d25df87441eb93505120d6e4305e1edb8f84decd23305971302f8f
Date: Tue, 24 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698156496
