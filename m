Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F231F63AD
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNaZRuGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82499C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699676896;
	bh=Jsq5bOSRXvBzp0CihCvBOV5PFDgWIuwWAqiFiJ8Ijig=;
	h=To:Subject:From:Date:From;
	b=JNaZRuGqG27T8k+vknxtanYhANTQLR6NzdnpxKHBnxcU/uoWMCPwiu7hUh0Z0Yb3g
	 wJO9UCPpr91UXngJe1Wg6+LrZm2alYaJz2IszGjv9lYk0upVx5u8I0/+kgmZzGbbbd
	 cszfadChrpK0RGJWXr+P4HOP5DAFBdKWkLIUOUYieXsy5DXuitHQ9UCydxkD1YbBMl
	 1FvcPGC4x6i9Ycbdse6gJjhyD+RuiH/MeHo7ElkLyz41bMX1H5RzJMIhZ8xEIu06Zp
	 wpwY9H63eoU5VK+6SqIlL2psQg2fhH1UsFyg91RNFxZ3wMoMXeZYxgek58dZG1pIyF
	 bfOG+Sq1N0NWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FEFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967689638.31158.11892716977042402687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcebd81a130477a5839be2c6c2f0957675249b183c82434be7c4d3afda09498
Date: Sat, 11 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699676896
