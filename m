Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE70210B
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyPdi9/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CB0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699397896;
	bh=mSVztl+eqzRLryaL5BqPB0aSkcGAqqcTwGbMmQfP0e8=;
	h=To:Subject:From:Date:From;
	b=iyPdi9/soHkf0GWkOanuzb8yTbXlAQ1zGLKaeEBZ4HnEsaJJ2R5x7m33fJMq5qWER
	 j7X4XqbCwLvfWFRsZyl5SFsQyCZmOyhqAy+VM604ESjYwXTFyRj1mZTJKohisMu4+J
	 o1GNDrU+DWcndyxTz8naN+s1FCPUx/HKfV1ycRsh2ESRqtkR5ucnAVUAfRF0L2u1WH
	 qfAIypA4YFo5ssWx7kR2TxXQ4tgp0801IRnuit0fNVumIcZBgg8srIRKNoKUPFN2p4
	 WdKWIpPJHFWtBxzgAZfTd1zSmFk/+48odxM03WVkC/qvfy7MdmOIGqjk38E/UgKjNl
	 fpTEejuDnfRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CC8C4167B
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939789642.16577.15855435400982530552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9123383fffe1722108b24a74311e76abb2131dca5ee3285b72369e98141ad31d
Date: Tue, 07 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699397896
