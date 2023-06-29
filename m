Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAC510ED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB024C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687999989;
	bh=GdEeIRaGp2pRWngxGj/FKPeVrioACNpszjJZteYR3W4=;
	h=To:Subject:From:Date:From;
	b=evIhz94iHBtYALMo8dcm/gpYyjg1Gs6tW/uGEQK+bxvthZ9VRnqD78DOoLaKQocdm
	 57+8AMtAjF8v7XYeBlyP81kPUTfXbV/jCAUrThXyugU719roF/I5b/lkcoxbGMx8gJ
	 ZKVVlMF6slAtOUYcerXYCiT+hPMmBE50CDEXVLZWAy+fLw7kty92adcEv44BjDMUJn
	 h2Kh6kfqcocTULJtkWH4KoElmK8/k1rY9vrODxH5yo3lHTyxikj5HoPYCzyUFKAaL3
	 /p+mGPmF3NNHnPPdMdEyLS2J4KSdi5E3EXvVdqU9iroU5Z2/H6mH+R5sg6fphmSQf1
	 0YlJMB95On0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7667EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799998880.7928.2915922379562975110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e124c16806da99ed0f23e50458cf56887a570bc166c291c3185a045760c69a60
Date: Thu, 29 Jun 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687999988
