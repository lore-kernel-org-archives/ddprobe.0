Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FDD8BF8
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8CFC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667950854;
	bh=InQoTV37Nqs+sbcKq/X1O21OhqN7ZN29gJaIVTCtl9k=;
	h=To:Subject:From:Date:From;
	b=ajkaNDUm6fohqJA104ra9JnX8Bxfv/yCf3szedJccim8wy2TSelaII2hj34lOtLsX
	 OiBGTE+VxEh4ZPc0l+G+amIbJdftm2Gh7iUKTq5+ceXRRcQ4FD8WG8buatm/Cp/i2+
	 QEcRmw4YIXLvj7TE5ESPR0LsbmbNqAJCKXgAfECt0EpCmCW9KXMSBdIyHfzhe5WvSp
	 O/xdXWvLzKyEW0c8K+ZNswFvPcYAsyiN09TZ36n8RbKfsikXmDY1as+lzaRFLQ8kg5
	 C+n2D2vjKscsRsH1LFxIb74EcXXKshMa4kcUMGea9JidoBL5woB/Nznjlw1VcJC3Ep
	 aJuX09yOfI3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81953C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166795085452.4991.949246985735540336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec232f69d2d4c1ba570eb7afc3b7b86101f96b6bdced59bf17ba28be0fa2f7a
Date: Tue, 08 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667950854
