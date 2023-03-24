Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911627706
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CDDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679695865;
	bh=OjOvLDt8FMLzB/9kzOFVSiUK6KBfMce5qq1lh8XHs94=;
	h=To:Subject:From:Date:From;
	b=RuozuXqSSiDHdFcEhcl/28l+PGAf8mEf6m8EmLPiT3gd+Uao8tdWTEEgzxTaop5ow
	 ZpiN3WASOxIdSEvhf4TMJBKVpL4M7a/1qpXRHQJ+2FFTadGf0+MxMDDwLJU2iFYe9V
	 wKgdL9NYKR+Pevt4X5VxdzkbNJXyGnPl4SsGadFJ7f980DHpUPMXHSSiwxHLYrXwGZ
	 YkxCUOMWmUyku6ZWogjnf+6n/N+DwvPPTjC4E30wI/2XKeY2igLtvo9Ys017o8G/cZ
	 0L/fRFkc9ShcgMKxnTCgSP0kFrdSyPYDeT3Q5K8uTFsfTEfanpOZvS2BBVy5ImxM2f
	 bOT+vD0lVvv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98F2C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969586575.1363.9208296770846378643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b5a93d0378b62a0852e6830f449cc5881e31e054905a400406db175a87ee7c
Date: Fri, 24 Mar 2023 22:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679695865
