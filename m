Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B61F2F41
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E7AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676069645;
	bh=++eZeZi4S54XEYETSh6ygE5rQ1er3FfQjJ6Q2X3b0e4=;
	h=To:Subject:From:Date:From;
	b=BswAawmXlZMknOnSPCDol2kiVttQbb59l4Uvtf/mKfzlar3WrahHKNWsxARlFuR4r
	 Mxy+fy5rPEyaSBF+DLfxbsBe4Yu5qbiF5iPfVLotTSRV7VplXxkdd280RxHut4/+Zg
	 z8uNTyc1ywdbKL6SGIQ/HeMV4usKKDgmDIdSbUXqzMUPvjHpJBXX1TNPI4eciHasnc
	 XcxyQ6CGisJlXYxzOrVhfzp7vhmcFsjLl8BYb8QR3wD0PP5+IOH/K4M8CjW7T0yyPP
	 Lhm85zCGWKm4lqam2UWpxO5Vc4WV6lmkzGX3ErCVR+BghRx9vtSfd3PcAP2lRhEjid
	 uHXGcPsVPAQbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B731BC636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606964574.4650.14027803408030991871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be40b96838114c0ba7c3bb8799f5ba7b0b55047b326bd9fa6409b4b25ac7f49
Date: Fri, 10 Feb 2023 22:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676069645
