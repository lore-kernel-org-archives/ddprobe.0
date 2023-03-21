Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3454A7C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7171C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679369885;
	bh=Rh5c5M3VPHFQdhnNSij5xm7CjnA9kt3Yr2LEL7cWQOQ=;
	h=To:Subject:From:Date:From;
	b=J2MQpbChcPQRwDfqxu8s8adaPLpdXvOIfQBQsLaFSCtWk25GZJNNtSC0rC+T0mfEi
	 KV+WlM8IT5da8EJIxFS4M4l2fYuqvWfaMgiEjMxTiXl4hPu7Dg2eRSps46eE856owU
	 iUzouOpaIckbCRMJzalbF6O8F61Qm8tL6J2OOwYMOjLr2CtjO7zf8LI+jYJs+3Q5l5
	 f3qphXqmyDxzbh0ftAO5VU2pO5Wuggu4FuogrOCphsRg0ijdCcXfptShI1+AUpgdjs
	 uUI+FKVXRozGnr4Vk453m9JKINT25vOo79msfetvckuqWP+bpF3HM3QwUY3e98qUvY
	 O/7STr3wz65aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64AAC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936988573.1880.9384637801859121390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f41ae9b49f164eea8acdcad4b061e1fb5260b1b4b3cfced89a59967d03f7d3f
Date: Tue, 21 Mar 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679369885
