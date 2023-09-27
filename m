Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DAF1FCC
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 07:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C23C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 07:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695798308;
	bh=hJ3NSwYft2E2yEdAvp/kwmYvzQlskoK+/Q2nLcvCgpI=;
	h=To:Subject:From:Date:From;
	b=jK2K7fdBP7kqojZWvOP6KeyXnAPI7zRTluitMjfoPXbDOpKPEBkLQp58qGLsEwDjf
	 Ek9XX54wro3yVHOXtuB1Lo1ZOIiIrr+mZGGCw1U8qi+kAdkv+PthlcqXBGCJN8JN0m
	 qtQ1dYXtf5WA5tDr9TgDSx10T/zzUT/LBGkYA5W1Q7jA9iyQPkW7nG0ZBdD8gs+pxm
	 pdiI9PqBn9X5xaAwg62dR7MjUamLr8Q5yQ2oQEKl+tWt8cCedO2YfRhCepD4BWL5SK
	 FTlnLwl/42ajCtFpeawzWuImri3x7t4fiJFrLEMTr2T7nd7dKoHSAkts4ZwEuTNRLh
	 GnzUf5saIIJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A73E80A9A
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 07:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169579830867.17847.12935654041108636418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a20aa7dcef17ee0ac7aea74efac4fe9efedd4876bb6b3f33b81061b3e51c48b
Date: Wed, 27 Sep 2023 07:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695798308
