Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B77A1DCAC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63F2C433CA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687996388;
	bh=fi9JtbrXWdRhMKenhezBHldeBUikgdcCrH2S9OB1krA=;
	h=To:Subject:From:Date:From;
	b=iqbtbjuQRbnFcvt7w/TbC5T1kEpNOuGKS3wUP5/xU6DeFp3EqXxCcABPxToYGiLsM
	 yJ95pcgxmVLYM+0LpG9v6OFpbjSrcySp4QWYRNxWPp302uOQcBp8La7sGIR34JbkOY
	 PbtFOtzC/rZ8KN29F6wygsGQqwkqHUSYCTV/d4EI2tRss7wCvWx17nSFV7uNXItysO
	 TrBvoqvMaNhaPknExu2HbUiXDru6nZ//cXbLD3IEVu+cyOyfFwTX1FjamSyZjt0UBe
	 d4m4C6O2hrXzOvIpnh/qLm2fotTIdWzJqHlLMm7pGxMk7JtHwxSMe7UjQb9wB7Uiz8
	 d7a/XZqVXd0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2ADEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799638872.8696.3628578766571868742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2986a0677759712e128a433c16a9ffdd497fc860c4b2a027988c881ba604d464
Date: Wed, 28 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687996388
