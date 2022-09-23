Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB52B7B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9EDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663891253;
	bh=U53GBGtbdm23aKFTiUZXFs8qroNgYqzeXXiv+S3a3Bw=;
	h=To:Subject:From:Date:From;
	b=vOAAJa3fW7J0QhQefyWoLjc3XCIsjQramns8RcvRTUdh63I0WVVYyoge6PXTwq+mL
	 1o8sMWBJfUINeH6J12ONP1jQpA2q/Vp5vsU/AJ5xJecG27L3GlouQAV7xsS4YOxjii
	 LN4NH6eTDo6Yi2CT2HTppEcBfzrBkL32AdpHLPv1x3EUSNMXM2Kr+ON1D05brHKMSd
	 I5G67qom905o2Jlt5gFIHQdzPzy1QF1PW3s5l3LqoH4atm5UbFiScNBJvM2rjHUmmI
	 Uv20dkNgtlJWU2aLG1ud7IifD5x9qAvHqZfAQbJv6qV5cbRGyzHSsmlPQuQ5ftLPXd
	 +7YbZpVIDOaSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539A8C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389125333.10033.14972738762078880691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8ec8f7cd3eb35c87758703b6941dc75723c7389db020893ab9f41b0f0d85ee
Date: Fri, 23 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663891253
