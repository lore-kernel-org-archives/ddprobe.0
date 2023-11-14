Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E2733077
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKx/VhQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D10C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699999096;
	bh=NC5HumNN0e0KRMN9VCqFuBXFnfteMsgNz4uiMmG/rnE=;
	h=To:Subject:From:Date:From;
	b=XKx/VhQlGhzgY9klWUynSFrK6k5a7qfh0XqIrREtmlbrWoJF72V1MDu553PpigCEs
	 riu3auvb3sTclSNHBqesaZlRTcZt8ZVuvqmmWfIkKmc/SoRJdvUrqUTTxEs/8OJFYq
	 rVfIPXtpNdeeKozjo3X/V4T6wnKPhqeT7sMdAvrxKuejo/LwlLFBNAyxe4ujm1LJvN
	 ex8V3InJMijaVDt9oqnfIP5voU8X65Wv3PEdO/8ync5IRBhrV0IZZ0Sezw6pGbGGIC
	 8NL+ZB7rFA7FOeQqs+IR/1QbbOmgwGhA0xUu96oJXd7vF5LTKdeABdiGQZsQ4ylTVu
	 5yV43rpeAOmTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EA6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999909640.22049.11839068849881800981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c845e47eec85258daccf1f5904873c681786147659305f88086b513fae66da6
Date: Tue, 14 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699999096
