Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2B253AA
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQknHdA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB259C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698383296;
	bh=1Gs4F0ipWbxUjEzn8p3M1WIYxgz1XaCMgeA6pdCtt8Q=;
	h=To:Subject:From:Date:From;
	b=lQknHdA+ciVw/zTAaTVTZIs56EZ85pACuoaxUOj3XnltiDU8C/PT1WaJT1gJXrpfE
	 nRMNwSEv1v++9VAw6aAil9OiqQXGTqAg3JnISW0ESisB1LC7nL8zMCAskmmbHBEyYh
	 BE6KG/lVv+UFjBonfi3RDhJIPlWAhkFyzQ9aCFTwA1ioY4yV2SVnrK/sAzZUfHtdRM
	 BtNpashveJev2+bDAkMYcWXh8ErJXE5wOTJjosfIZRLxSIjwFJHP7dF2y91mdCQVKs
	 R6VCxx2UkBpC3TjS4v3B1vjBXW336dmgJ+5E2Gjo63MjltOj1Da0HXJZXnX6soU3nm
	 jfRsVGqaKRevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8112AC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169838329647.12853.16013500924967931950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377c0fa6402335522a9257c07c8eb30ddf1b621cfa4a1c0c0f6dcdae5298f470
Date: Fri, 27 Oct 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698383296
