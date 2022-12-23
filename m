Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DC6AD3B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9872EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671835887;
	bh=hqxNIK8hAOgPPDaoBWpiIozT4xsMhIRlTLK9VjYBc7g=;
	h=To:Subject:From:Date:From;
	b=Ex/cxig8mctodHK4D8r6moOWxwmAheplyshXDQ1iEv0pwQzmvyf+nyD1KWlnmItTE
	 DNB+LPE6DS8PCt5QBtmv2dgbOEnOMdzN7uH/yghRYvPpq0ia4XBBK6ROwyLEqkz4ev
	 u+50ODrUvYOVfFuwvr5vbZknamyJjrdt7dZqY3nyB7nmfyZQ/mHRR2pxLVwWYkIRrb
	 hXovRB+3rRFYDwuq7Z9RM426BRrAR95JcLfVu/em2SXN7fooZZHDUxW2M9D/LYz06c
	 ZqBHikx5EGRLmTDdKqD1bUDuYQLv3iogcAKzDN/d8kR7NQn+7uf2U+hiBhsIiGdIeI
	 YZD6GNstUwywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 703E8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183588742.16959.4610233268942894866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10a954eeae35c8959216e178fee0ccfcdb19bd5dde3ba355e7d2abac673dcc4
Date: Fri, 23 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671835887
