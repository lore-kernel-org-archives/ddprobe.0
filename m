Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5406215A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 00:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05170C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 00:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681864446;
	bh=dYS6S/GA3jc88EiNS5z6cTOZ3uV5NFfpiIjWhkSjL+A=;
	h=To:Subject:From:Date:From;
	b=kz58lerPud1rGLizrUZtygIj3R3AZMWCDyIOjiOdA7RvbEZc4EV/6J5NvOMpnk2Dn
	 V0Qx9DrQu9beH2rAcaK/pZA2ogEHhBUUrRZXF1WgrgSRpo6aTLFQ6/zmiMWk6khZqh
	 ZULNsrcZypcDgVZJ4H7EOlamo5y34s5tYknQB139ZNRL0quSRed7u197PzPczycJXO
	 8ReC2+eLfB8VxlQLJdpJanErTA0b9TOYPCUM3/0wbOaiVZtiJWlVN/DcjIxNoOQSNV
	 8rHPIYkHKW/dYTPfiJJsBPmePTBA8FpFQLchZ8ycKLl9HCfqCscQTwDh/2PoUglHio
	 jJaPDEZmXDrFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8191C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 00:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168186444586.27910.10463307213201708810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c19c9a82eedeff2adff3a9c58ca2c6be206fd6616cac67c5f4889f830e5600b
Date: Wed, 19 Apr 2023 00:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681864445
