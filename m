Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6B42563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B451C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671704487;
	bh=HoIH9//31DzWkSM0Um18PUxp89GOrtN+csjEtBe7Gc8=;
	h=To:Subject:From:Date:From;
	b=uTZsZTpeYv8TFSU0ur7QLYuBLYF2vo1JAj054icpO6BUxwU5Vt+GxHT9dAQBdbBBh
	 ZUm30gr+tLwX3XVlfml7DdhzhKG75iu2RDPKBti4ye61+Z1lAJI1MM1YaX+pPt0Veg
	 6oiICZkhzYDl/EOsAnzGxXGq7zhrfc6IH7pW27ovF4swEymaOad3Dr7tEcMfiOYx8t
	 PHctVWFt5P+QmXivv83KSLCk4rtHJZvBplGapCQ5YqoB+pL1HWasimaKW2HL6wv/q6
	 oa5SxJjvmwkGR7e947GNcn9fdbfEnJksnMp5x/B83VcGooR8Qr9NbwzLvBL0C1XBxO
	 PdHmzLaKjlISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D6EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170448740.13623.4406872736132583556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f074837bfee2452b3744e703057056b5326c1f58389d94c9efdac36297363f2b
Date: Thu, 22 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671704487
