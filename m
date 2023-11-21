Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9EF5103B
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keq/lDe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8514CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700594896;
	bh=PsR/ZqdC6e75ljiVLxL2C19eCRurx109uPdYpNl2S+8=;
	h=To:Subject:From:Date:From;
	b=keq/lDe2qBpkLJ57wLpH2FNYW/f0jWrZ/IJeMo5LclmH4/vpGtYfhHkPCN1BGOTD9
	 uF5gtQHwhNAa9Vdh7fQdusCbUvm3iLQXQ204cRX8gs9CUK97CX1sFhkFQRUunG4HAo
	 8KEjbgPt88EvDSKOw7PKXlXiEs1w2nFakapvC+sSYvbEf4w8tt4eZCdujCMe2eaC0a
	 CwZTb5XuKuqCYKrbo8XRU7B5iaQfbJu837z3Uv9AYTCJCgAKBfn7otC1WerKFWI66C
	 M3oDpmGzArmJgGq9GaO/G9IaCyeKLyDr0RrKascYTAVO8WgwlER9jnq/i6JYPSIuuW
	 LaCjoUpXNKM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B12C61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170059489640.1981.7181522817790442990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcfb25369ecf9258acf6ec59914f7f8fb068c3ddb499bdd4fb7269a2b790a65
Date: Tue, 21 Nov 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700594896
