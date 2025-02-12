Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A1527182D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739334055; cv=none; b=DZ99p5ZWfg16r0229+la3kYzLKFv0F3eTrQGIuNTjqPbItpDG8SIRkB1b6Xg19aOgKCFAjmmQI3MM1cWGl0m8aT1zs4uC6YoeTwZ4oC0Zb5PGdkmS68FosTuzc8/E19mFM6bqdfVmDNeeXp6ZcUR+1rw2VSjj5cpDE0AKngn6Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739334055; c=relaxed/simple;
	bh=wtPsl4cSh/0OW9zqDh0fcl637G0oqwWD3xULa3BNkbw=;
	h=To:Subject:From:Message-Id:Date; b=CbO0iFYdLwrjWwQP/2q8x8X7MXJHfkmfjbshbzfocvXPFtZP67PwnM94dlkOd0f3iQLfhkf/79+ZUCAJSpBYvR04KvxDtLGqN5AgLnuMnsSRAd6Dj09uatfytyY1yXDhhg6H12hnSCiOFsCsTrp9kxDt1XzZlfEjEEJiT05Oi08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twZRJtJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twZRJtJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17E67C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739334054;
	bh=wtPsl4cSh/0OW9zqDh0fcl637G0oqwWD3xULa3BNkbw=;
	h=To:Subject:From:Date:From;
	b=twZRJtJIXNZoG/TSruMEOqD5jxxNMn+x9GF3N6g/cj7/wW6Vj06iqitdzCpdmfC8F
	 JKsOrF78WKntKbgd4RnLOOnuuGu0jOT4e4SMo4s/EBQDNGCKAXng49KE2XD6eZV24C
	 16lWF0fdqZXL0HL8G7ao8jUq72zTaOsg3KFtE4te9lul9pr0M7TDPCMcpPeQqPo5kr
	 YMf3O2OQqDglC2f8w+4WDisfbjJvIJmNZ1oj6DVmt60puuKDyMIHAOVWOuTMUKlMOD
	 Z6lt9TFTjwIGtb3BjQ/ML26FviJHj9DGT0KMUUQFnK+tVYXHnsSjGLb0am6UfF1y0I
	 pUPTRICK1jyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA001C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933405376.29782.564146200461031629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ef7662440085627679b5d710e7e3c94dbc33c558701f1e28d70ce35bad7dea
Date: Wed, 12 Feb 2025 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739334053
