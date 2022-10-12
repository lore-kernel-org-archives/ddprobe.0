Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB63C8F5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6810AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562853;
	bh=KtpYtj3yJLTN+ReabPz0R5aVyg46NYTK8nDVBO0HlFM=;
	h=To:Subject:From:Date:From;
	b=gm6CXyJ5rWQIgT5S8fo+yrgp99zzWFFgnX573ljU/daEA1BZppz8K1Oec9wij81sG
	 aeS7B9WjoO3DRqFmS7N0jdgJtLLPpfEaeCKWnmMuDquwl73L0yiFCEfNLOZ41J36Cx
	 58OTAZ8DKPNpII2xR7+wucB/uBu7dOPVPPKg4K7Y3L+MSP3xi3OQOR5MgOcyf2NI87
	 gyQiESAOv+28wPeGZd5VbIYxuBW/OBwzDxxsBwBJBigiKQaUajAg4cBT+E7lXNsQND
	 +AQI7HDfiiHAtmDI3xlFt0e5Bcn/jMwePCJWq2CXa2McUvtw4vOuWDnG/DFIXsVl8W
	 vYu140kfViKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF47C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556285332.13727.6218381736974697770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249465be63fe8ef989a3603b970fcff65b57daf8cf0f4047ad5bdf4d683d56bc
Date: Wed, 12 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665562853
