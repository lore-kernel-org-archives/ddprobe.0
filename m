Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D857B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67451C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663055453;
	bh=UBcq1Uhx5ThmmhjxpGYojWBsrB81Ojn/WO2M0fvYiO4=;
	h=To:Subject:From:Date:From;
	b=PT3qQX2UmdO7Bio25CeQHKNrhWn/hl771dC2f0Kwqo0y14cncf5uCvxl/E6qgCu9H
	 Rw6L706QM7FoGLaVydum/xIlpZcnF1Os10GH2PXgM2LmC9DL/PGFgt1NgI4foBSYyz
	 8CzObMQ097V7YSAc9J4iiYgnKv5IbhFOYZtrewgtLzw29YABPoTBRNXX8iDi0doNBD
	 LV/g14HHFSgH1sF8gMeg2Fp2MwgwY32i/kKAcnljR3svSXb8IOPgjkxscPjV0WQSJa
	 479zFXnFxVCf0fW+lUEd41d1OIs43AbY15pSOQjMX6NkkRaKNUoWMfz4rxGkAIEonb
	 mwwrvTRNdPPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51417C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305545332.29819.15793735251643432490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529accb4284c076918480c0a8041690d3f2565b630a691a7d9ba9d494429675d
Date: Tue, 13 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663055453
