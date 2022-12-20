Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26641383
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF1CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671515487;
	bh=zs0qbJrddikRMcKrukjkPyl2UYegeS7BRb2ZzTn1Png=;
	h=To:Subject:From:Date:From;
	b=WsSRFe5nKNoEK4dZ7qANFCJHdI2HefJLEraHgUb/xnRI2i6ETFCTD3gDuwdmdy2yW
	 Znh8BaguYcrSypgywxv36udgJrPnQOWMLDv1yioUaOZd4JywuafsvfbPfnbOTYEaWT
	 CLtHxebcqY7ERvr6WoN3Ku4WubL0JpbsudfELmxAQfCACGgSL5qd3sq+Fhomagvt8n
	 5g7xt2oBNmu22MmLshehjVOyOX63mtgUH8qeoMgkVS67Csu7+TmKEqsoMQLAGCfkV1
	 vwmm+oKyP4zIjGLqAoPSneciTjvw7Sh4Dkf0u7fRZdIfY22fZTkBVJ4+mxRS3QYa4z
	 T0Fyz261IfTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62254C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151548739.23517.3212576612672486513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fab0f1f55b5a68ef3a128f62257f5ca3d1f62d7202eb453b5711cdb4a8e58ed
Date: Tue, 20 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671515487
