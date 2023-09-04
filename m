Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7991D1FBD
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1253C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693829048;
	bh=ChLC5KQL0KdZSFgXH9MUT/VcuiRU5SLDwqsvbzoLm7Y=;
	h=To:Subject:From:Date:From;
	b=cvU1rlhX9VXPdcHK/xWRPgjHTrHPWsdjpOTCYPOzBFtOSjjOpD6KnXSFrd6bDFAqw
	 EwYElQ5ew7pTY8mIt7fZaE3qWjYtHBI8fGdn3g2evME4IirYI5oSLetf4RGLPeTsKM
	 gSmIKRxYRxJNpbpRQqa1PpC9uQCUUYw9BC3wBr0NZykpT/kJCSSOJxVwsnf27dDKnd
	 B5BTiM47LnKuJnD5NPLcS2/GaO9WeAvD2j3edq+QPSaPtgyGoLbR2JPy8Nf8C4uub6
	 S70Nk3KdWDwLtid846v1uQG92Fe3ThQ7NczPXuyaiIzMghSkhdxqxuFxxVbXV4GJ5f
	 lh/Azmznjnw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE23C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169382904875.21353.4806116754989245821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69806b772384c4673bfb3e1e1e71aa5c5ffe10ccc9a28efdb40d438e58a78daf
Date: Mon, 04 Sep 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693829048
