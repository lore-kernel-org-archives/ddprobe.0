Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B4B7471
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674138087;
	bh=k7p0TTN6e7Zx2mHabovWVobCRtV9kfG0foWS2kUhphc=;
	h=To:Subject:From:Date:From;
	b=Sr87CVGpYrW71stTvUttAN9xsA1kRNSsSH5DVVT4uP+kqrMlQd7TQBxk6b3LOc5M1
	 ypsiJ+Ef9Bblx7xbUjH4Hq3BdkjuV9asSjh0VD/mkKbuZsFPZ25bf2FdYACJYDZjdj
	 j9qnhqR81nq/L1wZgxgYvv1RnuNi/cnLF42+bUROT6AXevFusBSv4sXcfHPEIeOofe
	 3NdLbH1+YjHweAHEEm1291koK17ex3LWiFmlzFmtpLrMDlkbymqAw8u7X4611XPCro
	 D8FPmaRsh7o2LlrnctIj54RBGvDDwRsBx1G2afhYEONF/Z/ecAvEiZSrxI0tQ8iO2c
	 bngkiKUOIwMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D1BC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413808749.28102.4326005281362150601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb1f1c5fa758416408092217754be86944fd08b3b8aad26bc2183335b497304
Date: Thu, 19 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674138087
