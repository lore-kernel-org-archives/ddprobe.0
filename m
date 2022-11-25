Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AD72570
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC54C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669368054;
	bh=T06U5mvtJnSCVSPdo7Ox8MEDrNT7XGwHvciVZzlbvCs=;
	h=To:Subject:From:Date:From;
	b=IN1POhBp6QX6OWjaOkSasYVJ64hwIwc82p2Glbp5h0jp86XNQQ3UMWboXFSRhabw6
	 o6s0puNAFQ6XL44cS+juGucBqCjW95LN/9mMJMTiSSBP/TKdmUrUaU7plEfKEHuht8
	 9SlApbzfxzTGrbxVmz0JHcA6gN8EzTbX+fhFsbnTKLd0z+lNEeNAIRAJ6tMU5osDHK
	 EB+ce3N4PV3BBtNU3OD4BChIkjBHB7trTSnCkJwrlae07eUIvU2a+Q8kX5RyzowsRO
	 u60VsqTtjiMdQeKwCjHkPgEn+/mvEMYVImLbUJuwgZRKyIZyHOtohPpBnqqvOPUTxD
	 PlGk74YeBc1Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E9FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936805432.9952.9504549254584184283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28a29421ad189a91685d1f7ca2027d7dc723fb0133475bc924313f7ac245c52
Date: Fri, 25 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669368054
