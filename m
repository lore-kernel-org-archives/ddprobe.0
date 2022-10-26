Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD549259C
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFAEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666821653;
	bh=ysmj3g+iqIf99UUwsxyOZeO8tLEU7dt/Zre3WDeRR0o=;
	h=To:Subject:From:Date:From;
	b=A4nWKyR0D7erPb6FJk2Tm86NoovPiO6i2Acl2D0uagmG/ANnnqpnnlfI08f1do97o
	 QVDMIvv9RFysm/3RQGLYHmjCLmCAoNLt7bYHfQ9yhEAP0YQgxO5pbGwEFRcHrUdwi5
	 QS4cpgvtnPezRxGQFHR0NwamSPOVpdNPwX6sWe7xp+fZbt/hWqu/75mZ5tXfMMcZa7
	 WxCDUpfsC1XLDtNDNr688fbIaN+W0kXni5Mi1Q0bdy41hEij5SASuZAvx3fdDS0BIM
	 3k4MU9Q2aB6hwW3+LLYIY678HhCbc//1MNNPvrYDgrDNo7k7jEVrsTz6UQUTrZQkFp
	 K2FBXl3TwMp0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F012C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682165331.19924.5289650069298930824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6af5ec6575f73e22c453b910a2963fb1ff6c5d4f09fab62dfe26cc02aa00ff
Date: Wed, 26 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666821653
