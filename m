Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2D029406
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Do6YpMni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C39FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699288096;
	bh=WL9MfBCKxC6XzSs4QNQPI1FEcslzGxNyQfzYcZXw1Qc=;
	h=To:Subject:From:Date:From;
	b=Do6YpMniyiiOmnu22jTje0KvHZTt2GmKnCf0/7M8nj+tvsvYhvxndchLXTR7XeJ3B
	 1u/QMT+SwbVsTs0JZAv+1462pNIABB71Kz5CnSCwQwer7Gx1CWcecKUTCBiNCJ8IA7
	 ruQ+oYG0kERtIniT8V9UskMGZyvBCPNCk3yep0AEn5rJ5a9Njxm31vPd1AusBEtxm4
	 SRWBbBeyRFV5rCWOjapr8QWhPN0ra2TuT6+VDZAej4Zl6UmJUvoddsO9T0kL3pq2Bk
	 2blWO4W7YmwpscCGxfzFahEBL8m/jhuRvb7KO7ACOUnU5/tBATD2l2lycJOPjZIzRb
	 2boF/DYIvxkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAD2C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169928809642.884.16318194359989860215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6480186fbefd5aa53b48cffd2dccd82aa2be4459daaf6b2216ab95a8bfbfaca5
Date: Mon, 06 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699288096
