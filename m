Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9456DC2EA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AFBC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685749085;
	bh=qpdiizP2xHcPUYUZpl04quFftq6+fPtgr6STysgsh8c=;
	h=To:Subject:From:Date:From;
	b=k/TEFIyiBVgkAxEwZuSzKbu8EwiLMUCSz8a5+ZUwhXxDafvukLrMz4W2/kh9C5iXN
	 hkdshuKyOgpTBZz2DH7GzTxI2L5f7tv6mPv1Ng3sTgpMEA2mtK2wOvSP3ECTRm0Fuh
	 SGTW6Nt3fxSmiufx/k4//LKrSY2Ugc+2VBhVrVudJlan2vCTzca42HFhssNpGU0O7S
	 x+nlq0yCw2whCB/aRrix770ioNx3TKWm9qVhNPSB/HDtzVcX3MrWBkJCsjlwWQP/ji
	 CL//Oo/zPLG80K/r0+8KU6W2o/+Do9S6h5227j82SV8zslSYT7mNALdnutLrULyF3R
	 i36iKjbcOQeMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21D5C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574908572.720.5359709708450329800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c7ba7ea5fe9f8923e75f0d3483059008995dc484ee36387c69c41e9df5f354
Date: Fri, 02 Jun 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685749085
