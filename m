Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4027D373
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5698C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679027405;
	bh=X01M06obweYuFDYS1xiFKAV2SB0YsJH4+mamZlV82OE=;
	h=To:Subject:From:Date:From;
	b=k6+HPmkaQF4wNdjVH2ZAnL7b+D6Dedxpjxfz8hvBZ7WHscHr0GzqHYTd8grSN6o9R
	 XTum7P+OI1r/27ITcf6n9xzjrXO8a9c5XOZxRJKqChw1rZJH2Gaf8eAelyyiEhIylN
	 B7bNBKl6OUMEhOXxFdsxarU3dmKFF1ySq9llWeYtrSKuEokx5huHOQv51NThbdaM2Z
	 qoHu18iapZBzJQY3n8ZR0JBH4fKYHT+pu095vtdrZZyVcXY+MXKzqGzOUtxdevCubN
	 kfEt27aVsux5BLX9QJizl4rJw22b+9nUq2av4zTFjxBbEGQmNhH6xmffsq9Ef/edhz
	 EL1/UfE7x8+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85D9C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902740574.19078.14676604782612416336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb3c2b099567316d73d1cd5d275deab114ac6bb80e4b24e0427ea8f64259c0f
Date: Fri, 17 Mar 2023 04:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679027405
