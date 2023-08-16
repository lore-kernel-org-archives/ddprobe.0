Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6017F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 08:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CDDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692174788;
	bh=sW6Zpyy9kDL4BvP4RHRGkCkzMXPT8lwpJir8HozV4VQ=;
	h=To:Subject:From:Date:From;
	b=nmoguaHQRWy6xumii7SpALX4uGwiUzapD+3Z/uOPxfjafSvE2GXyfy+j6NFF3J3pV
	 J64RualaMGD3MicDYMnNIlE+iVZMpBQfpnDhGTG0IRT/2VIIfm+51hMTM9xYyWeC8C
	 sCSiIw1hG/reVH9ovbHuPayS3X46fkPy4ubEQvV558rC+MIQ30nz72fHN4zfEULfNg
	 w3/0AAxFCWqHwYkPf35cEila96oZCzkH/pO1Ew6rJyX2U00+QykBjkN3G3cpiKKZuA
	 qY6kYbEdGVaXy+NFq2w8rH2/ZSpYHbJBR+Wy3TxZDr4g0a/zs0VekPSSpWEQQLls7a
	 aLmDrxAtvJ63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FB3C001DF
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 08:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169217478867.2976.13979078188599848256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5215421ab0feb7cb5e1de527d222ecc4f6ea51d76b4289429c62f9da7f025791
Date: Wed, 16 Aug 2023 08:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692174788
