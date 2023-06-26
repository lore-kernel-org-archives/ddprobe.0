Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DEF12B69
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6312C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687801988;
	bh=WO64rT/HGJpNfJoyQyInWW8pxK8gUstb4aP5HZuy9A0=;
	h=To:Subject:From:Date:From;
	b=dYLkYoEty4cDieJ5z+YgGHwoBhWz9XIByV5ynddze9zYnbMmU6R3QiZpR/cdgzlW+
	 bXmrikwdhU1Ni7xnss3Ts/EuMlLz4jDLWJX27p0sq+HTM5b8LT8JftRSqJUSLyQlcV
	 ScRsu6aiGSOHefa6RczoxzKpJro//QXi+xZqQKIEvpkapmKhtp2Pejop1BFUjBe+MP
	 0ima7Gn8RFbQNmKz9k+uh/mXM0q5IjaEpjh159WY6n3ECkmq00LKtMN5L9fmu31c3E
	 cic4d6FBPnP6cpn8C0p78Is8vf460lfH4R59RlVZj3yvDm2pTimjetmHSCCwPsbk+M
	 tg1TPWRVH3/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4AEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780198871.32173.3937119815308548818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbed2b7067cad979b33d64c4fed7fd2ef92ae0ba29ab0378f91c1390f759521
Date: Mon, 26 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687801988
