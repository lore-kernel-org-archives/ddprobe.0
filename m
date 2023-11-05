Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C144AD2A
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvEcrhjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB1DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699218496;
	bh=Y7IfaF9kSSmR71fFjoW66xZZ1SAu1Oiu4fm1WVlzNWc=;
	h=To:Subject:From:Date:From;
	b=pvEcrhjwCyaB+31ddGzLogAe/Qm4WF0IpijST01ngUbUYgR3mgKr9X4wo+XBBhy/8
	 65nXtaB6aqYqfLGVjCvTKCexZIS54GI1ba7b+lvACVkBxtVr4kM8PEJCKaRNhUiyx2
	 nao1bLsYsM6d/w3XDENY8t4FfjN1LPS3Z0iWRbNMguQZBvcKV/fFg7I+TQLHJkaz5m
	 enSISdriBNKoPfJg/VIj0JUx8KPVS7uDmsvoUxLair3iVl88aHv3jrBhpiO9GcRl7J
	 Hbz4ulSocc9iqy8zOMpepSKUoncSZFdVTroxm4zknpx3DVeLp2Wgjx8KUW/pcnM5y6
	 mKw8pRaUxhAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61523C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169921849639.18365.13758662236534112365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cef8eb076578fb24b4324782b06701de94460e09abeac72eb7ff86b8cce3b99
Date: Sun, 05 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699218496
