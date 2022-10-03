Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F1B17FF
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78599C433D7
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664823053;
	bh=wlwkeff+eDvSv1www9Lil2fXBYE9jerZFRtK/RdQUOU=;
	h=To:Subject:From:Date:From;
	b=nzfW5X26U+KtJR1wl4KqJXwk1objAJHsvffTdg/wefNEnuLMHh1jGLdDOaj2aFxJ5
	 DnMn33NFgUN3W31Zwrlwq8m72Bs028D0Bau2hACm+mC7fU0uO5C1U02ZPpXsImcEvI
	 9TUSZBTN/lOSYTFfSEL2XPidEcwgN53YozHSpWy6LzLsAOMZL4zC+rODnjX6cWKVhD
	 AxftQGSfE1AY6NRqN/RqAbfD4zOLOsYV+FPLjr7YZr5HdKI9Bz4A4DnQY8qatwvSPs
	 zNdrfkLOsNmCIAYCPWS0d7z4ps3ujNnMcKbTC407l4IxLqYOIx4DMsN9A/BcnZhKHN
	 4EzOmkVEKcTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8BCC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482305336.31158.15468501807358056249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdefc65c10697d8a330d429930cc7d2d917eab268e53c0700b0a674b21218ae5
Date: Mon, 03 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664823053
