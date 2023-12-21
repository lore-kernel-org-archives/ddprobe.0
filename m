Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC116D6D3
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLvO9Gsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B141C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703167696;
	bh=0jteOp69nNgw0ZumWekNo7A22+WmrnepBWX/tj0uRgs=;
	h=To:Subject:From:Date:From;
	b=iLvO9Gsdlqe5AMYyTbBNtaINgDIh/q5bqUVnsQwrMFL8QirTi5zv3pBkGaL4St7bY
	 AwpDZ7uQkN7x599blfadOW1cAkgwIDbvGadTVSP/B6b5rMgKCMNmBPJrSpMw7yEOUq
	 DzJN61gODQLEXczOc5XhZWdka7g6vF7VRLrcdSJZGljQHlkHT91ymDfsinAN47PlVc
	 O8oTpN2VTvArlI26/I7vLjxFDRGf6pIDHmbJXekEu2LklAhtSrLuDIajH3XwMBYWq2
	 HF43jsvkrIf4T/QLnKNcwimdAMj5H1py2cuS80CazbLzOwcgHm7HLCBx2UN5jZN65M
	 kRZ3RHFRj5r/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B1FC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170316769638.7302.15527224860937338274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06ee93e8a849807e5cdc58a896e35b0cf49dbd5543dcc5eb558a7d54609c21d
Date: Thu, 21 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703167696
