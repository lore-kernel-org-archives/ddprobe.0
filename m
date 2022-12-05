Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8357C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784FCC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670202054;
	bh=HNkrd1gEHejcHmu2ksINpN07IpGFeZuA/SwCW3ZASRQ=;
	h=To:Subject:From:Date:From;
	b=krB8tqdHP4ztva7KDn/zwH8IsW/A5RUSZEcEPgq7yTx48OXmc72QIOdpMHllrIsH5
	 dSdQ1jKEmTayKCweQ8P5lw6dry5qvP41xDOv8WZcji52qa0U0/bGpOsVdQSccAP58b
	 cOdDRXMQmWToAwNaOCS6JCLUvohvIKU6p/+8uhOrAo677W+vuyN2VDqhrFkOZhViOd
	 LMFmFddtCs01f1d8JJKKEpuA0416JGVZprZTbR20kWtl8lzFOIZh6lmBzQRV3mShdz
	 5nHEWmA9fBfaEj9VAsf5ESJzbIwjYuZ0NlSGeiE8yBmbudcbuZYnKU+RE6dstM6iK9
	 UmvYPnm2lo+HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED1DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020205437.9000.5370163457571536617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147ed733b7203ebed874d6c7fcf2d33b3762cb64fd69f84f83be0d78833cc069
Date: Mon, 05 Dec 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670202054
