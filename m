Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476820F4
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57D1C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688550968;
	bh=CbiAryYSGIh/HB2ePUqeLJKx4VOCL4VsA5oUAcfkz64=;
	h=To:Subject:From:Date:From;
	b=nbuyEH0ucYOcPiH+xHzfgmS2gSKwVmFnicuqkVmH4LQ/MEIfeXVrq2AnZcIVr5IRc
	 QCNXmtiPiSYaKizqHGPLfTp2v40t/btlcJOg/zRDa+xdj/MBfbEOA0NH5ksB8OdJNe
	 Os9YR968CUSYs0HDges4p2AGEhnUcEijxxkJIM/grqJfRetw1Zkgp/5n4livzAzki+
	 ebFgHf0d294klVffvvdPTRNsm2mjlxS7U/WxVsqsKLaKVSGvDIwJ6hTEMHTVUm20AO
	 6ScVVXK9TwnKyzCnyvF/ZOrYdldHcMF4xROj8G8jRpbNZD3RYj9tOtFmjNWcW3vWwA
	 0BSDyKKgx2JEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FBEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855096869.763.7928000985832568393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785ad391fe469c0015cd84fe6b69e3903b18c9a4eb5560c6b2db4291c45e8565
Date: Wed, 05 Jul 2023 09:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688550968
