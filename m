Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655C5749B
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4014C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693432448;
	bh=ujs9G1I8JggX1mP89EAhq23HPAnwIFb5ht1zgkAujSA=;
	h=To:Subject:From:Date:From;
	b=hdQEIy0t2TTniqswia7qr2lbz0ifkAP2XPSPGZLwW8E2jdclJUtklGjOSlUB1IzJQ
	 h/uCygKlVLmkUBiCfXAVbbsUy6M6CeHFSZ/HxVkhEUMb6FHZMEHMBWeZH4bmU75rD5
	 caMDc/6+9smXEn7mM77NNSTFolPLorM0QvY2VRauJi0hj0+fN2QL6/ibabT/O1H2xD
	 BB0mLnwIRJmWQasQGKb/1YFec5RIcIHPxwMpfZ//xuqLH1JxoxHceC6CmWJ7634FG4
	 dEESqW2tu9s+ifrcYshouVpoG61eMCYz7A4TkBfiH5nZOFKCk2UMHgoqJlI4Ybj3QF
	 z7fAPH4zZWrDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4805C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169343244878.22572.3642821419841557076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6084d28b2bcf2a4c5e19d310ebe8ea1f6cb4f0be919b3fae6c39e039fe8d7a27
Date: Wed, 30 Aug 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693432448
