Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2B923A6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E809C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668493254;
	bh=GxUpYDt4vArAFp5pHuD30KTCYSnw/BRV3Ai/fjVEnRU=;
	h=To:Subject:From:Date:From;
	b=P6XpsWkgvWjUcI9YsaWxBnuQ0ttF7c9qcdxCpJOs4WWg0H3/rCU436KdA5FJ+va1H
	 SzgHFIMvFStW7ZP6RnRCLleFR5HnGcSehhVMMH/TJckU/Q4nWCVTZI5/sfozo9J5aj
	 S9Nvb8PJOJq2L+lV+YKevx6PvP2C2KC0Q+ybsjZytcQphqxKAl70wWAUyeQRAbDFTA
	 W6Fu2PwTFY994S1ftDgNGDGHCjGcwPQV7w9VtSH4Qh+z2IFZe5gA5k7B/2k5VNb5eF
	 8nHxpiruoFI8l1rXVHEKjmhup45F1rkdUKjhrhsmRiVwfNvpdgnCGSemOo2ryePGHe
	 MZdsq7hbDY5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B1BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849325433.2583.15063241203149606474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1a03386ae60527bffd39003674e02e2cc625c90ce401cf74b4e386048ddc91
Date: Tue, 15 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668493254
