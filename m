Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0257107A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810CCC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669138254;
	bh=URIowxi6huXjHNaV72d07M+AktSaU0al/zbmCvbVCqY=;
	h=To:Subject:From:Date:From;
	b=JXgKZ3tz65uFgeU4T8arhXU3czh802/tp1P042d63tGdj82HwjXiMyLv7Ys7mN/zG
	 8gAx80WsbuXkhRnnBLHx6m7gCWaoVHtMumLt4p1atPnoP8iQnoEM6EBR+zq0mmhuax
	 V9WpYUzxkvW3XIGYMt80Fr+bvVxdIOmZa65GP9DI55QnNAWxO2nLoxalEBWsizkMKh
	 2+jvRE3daZqyNRpuxVbhTmK4PNk04ZA5Dqx4kszP3etX8C08Tyii+fQGCShhfaP0xO
	 drnhg0D3V6CirJO6kARWLyk+IKJLM6fraKosvyN3llhrfFETcRSg2c6zZbl7nlvYuU
	 vI+8TkqbCpNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FBBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913825437.6594.10921464564434710698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a26ad7bab3e63d6c879d7a9fc69efa80f1306e7df05c9a6b1429ca0e1cb942
Date: Tue, 22 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669138254
