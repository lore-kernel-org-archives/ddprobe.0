Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DDD5669
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 16:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED7F0C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 16:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678898406;
	bh=X8CSqzhhB4jZMNB5soeq503UWjlLsX8uNMIp83FFCKQ=;
	h=To:Subject:From:Date:From;
	b=apYJOpXVZeTvxmztiGSCMOgPQePzNhNos3NH2LJBiVG7gJTFFb1fFaKM8RurxFh9p
	 4anMGDXd5YwJ+TF8C3eEtVyIDqDAghUphS6ePIXhlqq28FkUlnvvqQExzNwYWBj9kJ
	 N8SLDlU4mfUZSHhyqZrHvlA8Rkq3llmQ77THHpbzrI5TMYI6uwrSOFq/q0EonFIcUR
	 OJaXoqsYrkvDTrlN8RIGZu3Xh73Q1eRnz01hNjRSO90RUoz56rSHrvKyPD5NctqYpN
	 iDJXEQ1UB1FPF+u2EYUBCfOqFNKvmPwc9tPp+CmkF2XXKGT0ESAdCqCyVna4fcpur1
	 9g2wjjWqZ81KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC576C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 16:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167889840582.21994.4358339511842715576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab0cbc6958afc314bcd6aa32906464e5e4430b0a84a7571a4606ee1d3f832ca
Date: Wed, 15 Mar 2023 16:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678898405
