Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FFE633
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1C8C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667360454;
	bh=aJR+GBleKua5M1U19RIJLe800oJj2rsuu7n7enQ060w=;
	h=To:Subject:From:Date:From;
	b=Qys/cOxfkRIrlzCkdtHpdSnaBfVRVAWVNd8pEvPRwTLmIWiKAkNVCa5AvFB6V6v1h
	 Doq89172O2y0AVzRCVEd03AQFOP7lHJ5EAWXpuoMfCr+XWrtsPGKW3x/oy1RIIq562
	 QOdxbCilUExvDJb617HY8+yyt4JWvg6D3/3PRRq9Fmq1i948021CvIqbVIbcwtCBOj
	 DxdJuFyAsRliR7uAtRcYgRLLa67xiRYUKMBhQjB/6QRSZ7l+oqJdDSnu3bQhxHlBxM
	 5boavwcVoPhcafJzeNTT3YXTOkTpi0S2VULHYCc4YbjaGnuEvm/BcvdgUfoE0f18Z2
	 IAZxJ4YSkRldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54309C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736045433.5572.8568343802574518556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b587a963a07884978be2078529397f7021c1c3c8b9412f255ca37ca3a40c9928
Date: Wed, 02 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667360454
