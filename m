Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2C6ED0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3aCUplJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FCEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697861896;
	bh=EY36hp4+fZfbE170p9pk7Ldyd/kmpcVuqSdlud7dkUY=;
	h=To:Subject:From:Date:From;
	b=n3aCUplJowE3NcsHa0tusOXsV0ieCXQB6DCUYVv0z931t4oM3uD1RrOOuy4a7LTPc
	 ZoZxDVanmjJbrYUOkif74F29gTQh7mexeItEvUH7iBIqAnWBlg2Z25L+FIfOOl0tOw
	 H3x4YDOw1KBDoKY8lZ+NKmtWU0j+K/pQs8DmEN5D4MMKGMRYmHgMnHeGPp9OeccJT6
	 73bMT0OItVIMBeQHJEUBVkwt007MDx4MlXTOqcf4AfWjbsnV+BEC+XWJxdNC2uSSCk
	 P3e4XrIxoAhBYx6O4kn7MWlp8/+3PxdHBtc5ydAtloXEbNRjSlEgmIGMIrBPl6u8xT
	 lxTQHCBfkrEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77E17C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786189644.4840.2471120675062787460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a145e4ac788f8c01ae798c62d04c4b68c7b0404ef30c2cfeff46a2f4ffc50c6
Date: Sat, 21 Oct 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697861896
